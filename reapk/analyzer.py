"""基于 Androguard 的 APK 逆向静态分析核心。"""

from __future__ import annotations

import logging
from dataclasses import dataclass, field, asdict
from pathlib import Path
from typing import Any
from xml.etree import ElementTree as ET

from androguard.core.apk import APK
from androguard.core.dex import DEX

from .knowledge import (
    PERMISSION_NOTES,
    SDK_SIGNATURES,
    SENSITIVE_META_KEYS,
    SHELL_NAME_HINTS,
    SHELL_SO_HINTS,
)

NS = "{http://schemas.android.com/apk/res/android}"

# 默认关掉 androguard/loguru 的 DEBUG 刷屏
logging.getLogger("androguard").setLevel(logging.WARNING)
try:
    from loguru import logger as _loguru_logger

    _loguru_logger.remove()
except Exception:
    pass


def _attr(node: ET.Element, name: str, default: str | None = None) -> str | None:
    return node.get(f"{NS}{name}", default)


def _bool_attr(node: ET.Element, name: str) -> bool | None:
    raw = _attr(node, name)
    if raw is None:
        return None
    return raw.lower() == "true"


def _short(name: str | None, package: str) -> str:
    if not name:
        return ""
    if name.startswith("."):
        return package + name
    if "." not in name:
        return f"{package}.{name}"
    return name


@dataclass
class IntentFilterInfo:
    actions: list[str] = field(default_factory=list)
    categories: list[str] = field(default_factory=list)
    schemes: list[str] = field(default_factory=list)
    hosts: list[str] = field(default_factory=list)
    mime_types: list[str] = field(default_factory=list)

    @property
    def is_launcher(self) -> bool:
        return (
            "android.intent.action.MAIN" in self.actions
            and "android.intent.category.LAUNCHER" in self.categories
        )

    @property
    def has_view(self) -> bool:
        return "android.intent.action.VIEW" in self.actions


@dataclass
class ComponentInfo:
    type: str
    name: str
    exported: bool | None
    export_reason: str
    process: str | None = None
    permission: str | None = None
    launch_mode: str | None = None
    intent_filters: list[IntentFilterInfo] = field(default_factory=list)
    notes: list[str] = field(default_factory=list)


@dataclass
class PermissionInfo:
    name: str
    level: str
    note: str


@dataclass
class AnalysisReport:
    apk_path: str
    package: str = ""
    app_name: str = ""
    version_name: str = ""
    version_code: str = ""
    min_sdk: str = ""
    target_sdk: str = ""
    application_class: str = ""
    main_activity: str = ""
    allow_backup: bool | None = None
    debuggable: bool | None = None
    uses_cleartext: bool | None = None
    permissions: list[PermissionInfo] = field(default_factory=list)
    custom_permissions: list[dict[str, str]] = field(default_factory=list)
    components: list[ComponentInfo] = field(default_factory=list)
    meta_data: list[dict[str, str]] = field(default_factory=list)
    deep_links: list[str] = field(default_factory=list)
    sdks: list[str] = field(default_factory=list)
    native_libs: list[str] = field(default_factory=list)
    class_count: int = 0
    dex_count: int = 0
    light_mode: bool = False
    shell_signals: list[str] = field(default_factory=list)
    likely_packed: bool = False
    next_steps: list[str] = field(default_factory=list)
    warnings: list[str] = field(default_factory=list)

    def to_dict(self) -> dict[str, Any]:
        return asdict(self)


class ApkReAnalyzer:
    def __init__(self, apk_path: str | Path, *, light: bool = False):
        self.apk_path = Path(apk_path)
        if not self.apk_path.is_file():
            raise FileNotFoundError(f"APK 不存在: {self.apk_path}")
        self.light = light
        self.apk = APK(str(self.apk_path))

    def analyze(self) -> AnalysisReport:
        report = AnalysisReport(
            apk_path=str(self.apk_path.resolve()),
            light_mode=self.light,
        )
        self._fill_basic(report)
        self._fill_permissions(report)
        self._parse_manifest_tree(report)
        self._fill_sdks(report)
        self._fill_native(report)
        if not self.light:
            self._fill_dex_stats(report)
        self._fill_shell_heuristics(report)
        self._fill_next_steps(report)
        return report

    def _fill_basic(self, report: AnalysisReport) -> None:
        a = self.apk
        report.package = a.get_package() or ""
        report.app_name = a.get_app_name() or ""
        report.version_name = str(a.get_androidversion_name() or "")
        report.version_code = str(a.get_androidversion_code() or "")
        report.min_sdk = str(a.get_min_sdk_version() or "")
        report.target_sdk = str(a.get_target_sdk_version() or "")
        report.application_class = a.get_attribute_value("application", "name") or ""
        if report.application_class:
            report.application_class = _short(report.application_class, report.package)
        try:
            report.main_activity = a.get_main_activity() or ""
        except Exception:
            report.main_activity = ""
        report.allow_backup = _to_bool(a.get_attribute_value("application", "allowBackup"))
        report.debuggable = _to_bool(a.get_attribute_value("application", "debuggable"))
        report.uses_cleartext = _to_bool(
            a.get_attribute_value("application", "usesCleartextTraffic")
        )

    def _fill_permissions(self, report: AnalysisReport) -> None:
        for perm in sorted(set(self.apk.get_permissions() or [])):
            level, note = PERMISSION_NOTES.get(perm, ("info", "常规/第三方自定义权限"))
            if perm.startswith("android.permission.") and perm not in PERMISSION_NOTES:
                level, note = "medium", "系统权限，建议对照官方文档确认用途"
            report.permissions.append(PermissionInfo(perm, level, note))

    def _parse_manifest_tree(self, report: AnalysisReport) -> None:
        try:
            root = self._get_manifest_element()
        except Exception as exc:
            report.warnings.append(f"Manifest 解析失败（可能被加固破坏）: {exc}")
            self._fallback_components(report)
            return

        if root is None:
            report.warnings.append("无法读取 AndroidManifest.xml")
            self._fallback_components(report)
            return

        for perm_node in root.findall("permission"):
            name = _attr(perm_node, "name") or ""
            level = _attr(perm_node, "protectionLevel") or ""
            if name:
                report.custom_permissions.append(
                    {"name": name, "protectionLevel": level}
                )

        app = root.find("application")
        if app is None:
            report.warnings.append("Manifest 中无 <application>（壳包常见）")
            return

        for md in app.findall("meta-data"):
            key = _attr(md, "name") or ""
            val = _attr(md, "value") or _attr(md, "resource") or ""
            if key:
                report.meta_data.append({"name": key, "value": val})

        for tag, ctype in (
            ("activity", "activity"),
            ("activity-alias", "activity-alias"),
            ("service", "service"),
            ("receiver", "receiver"),
            ("provider", "provider"),
        ):
            for node in app.findall(tag):
                comp = self._parse_component(node, ctype, report.package, report.target_sdk)
                report.components.append(comp)
                for flt in comp.intent_filters:
                    if flt.is_launcher and not report.main_activity:
                        report.main_activity = comp.name
                    for scheme in flt.schemes:
                        host = flt.hosts[0] if flt.hosts else ""
                        link = f"{scheme}://{host}" if host else f"{scheme}://"
                        if link not in report.deep_links:
                            report.deep_links.append(link)

    def _get_manifest_element(self) -> ET.Element | None:
        xml = self.apk.get_android_manifest_xml()
        if xml is None:
            return None
        if hasattr(xml, "getroot"):
            return xml.getroot()
        return xml  # type: ignore[return-value]

    def _parse_component(
        self,
        node: ET.Element,
        ctype: str,
        package: str,
        target_sdk: str,
    ) -> ComponentInfo:
        name = _short(_attr(node, "name"), package)
        exported_attr = _bool_attr(node, "exported")
        filters: list[IntentFilterInfo] = []
        for fnode in node.findall("intent-filter"):
            info = IntentFilterInfo()
            for action in fnode.findall("action"):
                an = _attr(action, "name")
                if an:
                    info.actions.append(an)
            for cat in fnode.findall("category"):
                cn = _attr(cat, "name")
                if cn:
                    info.categories.append(cn)
            for data in fnode.findall("data"):
                scheme = _attr(data, "scheme")
                host = _attr(data, "host")
                mime = _attr(data, "mimeType")
                if scheme:
                    info.schemes.append(scheme)
                if host:
                    info.hosts.append(host)
                if mime:
                    info.mime_types.append(mime)
            filters.append(info)

        has_filters = len(filters) > 0
        try:
            sdk_int = int(target_sdk) if target_sdk else 0
        except ValueError:
            sdk_int = 0

        if exported_attr is not None:
            exported = exported_attr
            reason = f"显式 android:exported={str(exported).lower()}"
        elif sdk_int >= 31:
            exported = has_filters
            reason = (
                "targetSdk>=31 未显式声明 → 有 intent-filter 视为 exported"
                if has_filters
                else "targetSdk>=31 未显式声明且无 intent-filter → 视为不导出"
            )
        else:
            exported = has_filters
            reason = (
                "未显式声明且有 intent-filter → 默认 exported=true（旧规则）"
                if has_filters
                else "未显式声明且无 intent-filter → 默认 exported=false"
            )

        notes: list[str] = []
        if any(f.is_launcher for f in filters):
            notes.append("LAUNCHER 入口 Activity")
        if any(f.has_view and f.schemes for f in filters):
            notes.append("Deep Link / URL Scheme 入口")
        if exported and ctype in ("activity", "service", "receiver", "provider"):
            notes.append("导出组件：优先检查是否可被外部唤起")
        if name.endswith(".wxapi.WXEntryActivity") or name.endswith(
            ".wxapi.WXPayEntryActivity"
        ):
            notes.append("微信回调入口")
        if "alipay" in name.lower():
            notes.append("支付宝相关组件")
        if "mipush" in name.lower() or "xiaomi" in name.lower():
            notes.append("小米推送相关")

        return ComponentInfo(
            type=ctype,
            name=name,
            exported=exported,
            export_reason=reason,
            process=_attr(node, "process"),
            permission=_attr(node, "permission"),
            launch_mode=_attr(node, "launchMode"),
            intent_filters=filters,
            notes=notes,
        )

    def _fallback_components(self, report: AnalysisReport) -> None:
        """Manifest 树解析失败时，用 APK API 做降级枚举。"""
        a = self.apk
        for name in a.get_activities() or []:
            report.components.append(
                ComponentInfo("activity", name, None, "降级枚举，exported 未知")
            )
        for name in a.get_services() or []:
            report.components.append(
                ComponentInfo("service", name, None, "降级枚举，exported 未知")
            )
        for name in a.get_receivers() or []:
            report.components.append(
                ComponentInfo("receiver", name, None, "降级枚举，exported 未知")
            )
        for name in a.get_providers() or []:
            report.components.append(
                ComponentInfo("provider", name, None, "降级枚举，exported 未知")
            )

    def _fill_sdks(self, report: AnalysisReport) -> None:
        names: set[str] = set()
        for comp in report.components:
            names.add(comp.name)
        if report.application_class:
            names.add(report.application_class)
        for meta in report.meta_data:
            names.add(meta["name"])

        found: list[str] = []
        blob = " ".join(names).lower()
        for prefix, sdk in SDK_SIGNATURES:
            if prefix.lower() in blob or any(n.lower().startswith(prefix.lower()) for n in names):
                if sdk not in found:
                    found.append(sdk)
        # meta-data 补充
        for meta in report.meta_data:
            key = meta["name"].lower()
            if "umeng" in key and "友盟统计/反馈" not in found:
                found.append("友盟统计/反馈")
            if "amap" in key and "高德地图/定位" not in found:
                found.append("高德地图/定位")
        report.sdks = found

    def _fill_native(self, report: AnalysisReport) -> None:
        libs: list[str] = []
        for f in self.apk.get_files() or []:
            if f.startswith("lib/") and f.endswith(".so"):
                libs.append(f)
            elif f.endswith(".so") and f not in libs:
                libs.append(f)
        report.native_libs = sorted(libs)

    def _fill_dex_stats(self, report: AnalysisReport) -> None:
        total = 0
        dex_list = list(self.apk.get_all_dex() or [])
        report.dex_count = len(dex_list)
        for raw in dex_list:
            try:
                d = DEX(raw)
                total += len(list(d.get_classes()))
            except Exception as exc:
                report.warnings.append(f"DEX 解析部分失败: {exc}")
        report.class_count = total

    def _fill_shell_heuristics(self, report: AnalysisReport) -> None:
        signals: list[str] = []
        app = (report.application_class or "").lower()
        for hint in SHELL_NAME_HINTS:
            if hint in app:
                signals.append(f"Application 类名含壳特征: {hint}")
                break

        so_blob = " ".join(report.native_libs).lower()
        for hint in SHELL_SO_HINTS:
            if hint in so_blob:
                # libbugly 不作为壳信号
                if "bugly" in hint:
                    continue
                signals.append(f"存在可疑 native: {hint}")

        if report.warnings and any("Manifest" in w for w in report.warnings):
            signals.append("Manifest 解析异常，常见于加固壳")

        if not self.light:
            if report.dex_count <= 1 and 0 < report.class_count < 80:
                signals.append(
                    f"DEX 类数量偏少（{report.class_count}），可能是壳 Stub DEX"
                )
            if report.class_count == 0 and report.dex_count == 0:
                signals.append("未解析到 DEX 类，可能严重加固或损坏")

        # 业务 Activity 很少但 Application 可疑
        app_pkg_prefix = report.package + "."
        biz_activities = [
            c
            for c in report.components
            if c.type == "activity" and c.name.startswith(app_pkg_prefix)
        ]
        if report.application_class and len(biz_activities) <= 2 and report.class_count and report.class_count < 120:
            signals.append("业务 Activity 极少 + 类数量少，倾向壳包")

        report.shell_signals = signals
        report.likely_packed = len(signals) >= 2 or (
            len(signals) >= 1 and any("壳" in s or "Stub" in s or "类数量" in s for s in signals)
        )

        # 敏感 meta
        for meta in report.meta_data:
            key_l = meta["name"].lower()
            if any(k in key_l for k in SENSITIVE_META_KEYS):
                # 已在 meta 列表中，next_steps 会提示
                pass

    def _fill_next_steps(self, report: AnalysisReport) -> None:
        steps: list[str] = []
        if report.likely_packed or report.shell_signals:
            steps.append(
                "疑似壳包：JADX 搜 extends Application → 读 attachBaseContext → "
                "追踪 install/load/native → dump DEX / 分析 so"
            )
        else:
            steps.append(
                f"正常包：先看 Application `{report.application_class or '?'}` "
                f"与 LAUNCHER `{report.main_activity or '?'}`"
            )

        exported = [c for c in report.components if c.exported]
        if exported:
            steps.append(
                f"检查 {len(exported)} 个导出组件的 intent-filter / permission 保护"
            )

        critical_perms = [p for p in report.permissions if p.level in ("critical", "high")]
        if critical_perms:
            steps.append(
                f"高危权限 {len(critical_perms)} 个：结合代码交叉引用确认真实用途"
            )

        key_metas = [
            m
            for m in report.meta_data
            if any(k in m["name"].lower() for k in SENSITIVE_META_KEYS)
        ]
        if key_metas:
            steps.append(f"Manifest meta-data 含 {len(key_metas)} 个可疑 Key/渠道字段，注意是否硬编码")

        if report.deep_links:
            steps.append(f"Deep Link {len(report.deep_links)} 条：验证是否可外部伪造唤起")

        if report.allow_backup is True:
            steps.append("allowBackup=true：可关注备份导出数据面")

        if report.debuggable is True:
            steps.append("debuggable=true：可直接用 jdb/IDE 调试")

        if report.sdks:
            steps.append("第三方 SDK：" + "、".join(report.sdks[:8]))

        if report.native_libs and not report.likely_packed:
            steps.append(f"含 {len(report.native_libs)} 个 .so，按需用 IDA/Ghidra 跟 JNI")

        report.next_steps = steps


def _to_bool(value: str | None) -> bool | None:
    if value is None:
        return None
    return str(value).lower() == "true"
