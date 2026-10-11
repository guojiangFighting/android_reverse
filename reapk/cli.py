"""逆向视角 APK Manifest/结构 CLI。"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from .analyzer import AnalysisReport, ApkReAnalyzer, ComponentInfo

try:
    from colorama import Fore, Style, init as colorama_init

    colorama_init(autoreset=True)
    HAS_COLOR = True
except ImportError:  # pragma: no cover
    HAS_COLOR = False

    class _F:
        RED = GREEN = YELLOW = CYAN = MAGENTA = BLUE = WHITE = ""

    class _S:
        BRIGHT = RESET_ALL = DIM = ""

    Fore = _F()  # type: ignore
    Style = _S()  # type: ignore


LEVEL_COLOR = {
    "critical": Fore.RED + Style.BRIGHT,
    "high": Fore.RED,
    "medium": Fore.YELLOW,
    "info": Fore.CYAN,
}


def _c(text: str, color: str) -> str:
    if not HAS_COLOR:
        return text
    return f"{color}{text}{Style.RESET_ALL}"


def _bool_zh(v: bool | None) -> str:
    if v is True:
        return _c("true", Fore.YELLOW)
    if v is False:
        return "false"
    return "-"


def print_report(report: AnalysisReport, *, verbose: bool = False) -> None:
    print(_c("═" * 64, Fore.CYAN))
    print(_c("  reapk  ·  Android 逆向静态速览 (Androguard)", Style.BRIGHT))
    print(_c("═" * 64, Fore.CYAN))

    print()
    print(_c("[基本信息]", Style.BRIGHT))
    print(f"  APK          : {report.apk_path}")
    print(f"  package      : {_c(report.package, Fore.GREEN)}")
    print(f"  appName      : {report.app_name}")
    print(f"  version      : {report.version_name} ({report.version_code})")
    print(f"  min/target   : {report.min_sdk} / {report.target_sdk}")
    print(f"  Application  : {_c(report.application_class or '(未声明)', Fore.MAGENTA)}")
    print(f"  LAUNCHER     : {_c(report.main_activity or '(未找到)', Fore.MAGENTA)}")
    print(
        f"  allowBackup  : {_bool_zh(report.allow_backup)}   "
        f"debuggable: {_bool_zh(report.debuggable)}   "
        f"cleartext: {_bool_zh(report.uses_cleartext)}"
    )
    if report.light_mode:
        print("  DEX/类数量   : (已跳过，去掉 --light 可启用)")
    else:
        print(f"  DEX/类数量   : {report.dex_count} dex / {report.class_count} classes")

    if report.warnings:
        print()
        print(_c("[警告]", Fore.YELLOW + Style.BRIGHT))
        for w in report.warnings:
            print(f"  ! {w}")

    print()
    print(_c("[壳/加固启发式]", Style.BRIGHT))
    if report.likely_packed:
        print(f"  结论: {_c('疑似壳包 / 加固', Fore.RED + Style.BRIGHT)}")
    else:
        print(f"  结论: {_c('未见明显壳特征（或特征不足）', Fore.GREEN)}")
    if report.shell_signals:
        for s in report.shell_signals:
            print(f"  - {s}")
    else:
        print("  (无命中信号)")

    print()
    print(_c("[权限]", Style.BRIGHT) + f"  共 {len(report.permissions)}")
    # 高危优先
    ordered = sorted(
        report.permissions,
        key=lambda p: {"critical": 0, "high": 1, "medium": 2, "info": 3}.get(p.level, 9),
    )
    show = ordered if verbose else [p for p in ordered if p.level in ("critical", "high", "medium")]
    if not verbose and len(show) < len(ordered):
        print(f"  (默认隐藏 info 级，共藏 {len(ordered) - len(show)} 条；加 -v 查看全部)")
    for p in show:
        color = LEVEL_COLOR.get(p.level, "")
        print(f"  {_c(f'[{p.level:8}]', color)} {p.name}")
        print(f"             → {p.note}")

    if report.custom_permissions:
        print()
        print(_c("[自定义 permission]", Style.BRIGHT))
        for cp in report.custom_permissions:
            print(f"  {cp['name']}  protectionLevel={cp.get('protectionLevel') or '-'}")

    print()
    print(_c("[组件]", Style.BRIGHT) + f"  共 {len(report.components)}")
    by_type: dict[str, list[ComponentInfo]] = {}
    for c in report.components:
        by_type.setdefault(c.type, []).append(c)

    for ctype in ("activity", "activity-alias", "service", "receiver", "provider"):
        items = by_type.get(ctype) or []
        if not items:
            continue
        exported_n = sum(1 for x in items if x.exported)
        print(f"  — {ctype}: {len(items)} (exported≈{exported_n})")
        for c in items:
            if not verbose and not c.exported and not c.notes and not c.intent_filters:
                continue
            flag = _c("EXP", Fore.RED) if c.exported else "   "
            print(f"    [{flag}] {c.name}")
            if c.process:
                print(f"           process={c.process}")
            if c.permission:
                print(f"           permission={c.permission}")
            if c.launch_mode:
                print(f"           launchMode={c.launch_mode}")
            if verbose:
                print(f"           exported依据: {c.export_reason}")
            for note in c.notes:
                print(f"           {_c('* ' + note, Fore.YELLOW)}")
            for flt in c.intent_filters:
                acts = ", ".join(flt.actions) or "-"
                cats = ", ".join(flt.categories) or "-"
                data = []
                if flt.schemes:
                    data.append("scheme=" + "|".join(flt.schemes))
                if flt.hosts:
                    data.append("host=" + "|".join(flt.hosts))
                print(f"           filter: action=[{acts}] category=[{cats}] {' '.join(data)}")

    if report.meta_data:
        print()
        print(_c("[meta-data]", Style.BRIGHT))
        for m in report.meta_data:
            val = m["value"]
            if len(val) > 80:
                val = val[:77] + "..."
            print(f"  {m['name']} = {_c(val, Fore.CYAN)}")

    if report.deep_links:
        print()
        print(_c("[Deep Link / Scheme]", Style.BRIGHT))
        for link in report.deep_links:
            print(f"  {link}")

    if report.sdks:
        print()
        print(_c("[识别到的第三方 SDK]", Style.BRIGHT))
        for sdk in report.sdks:
            print(f"  - {sdk}")

    if report.native_libs:
        print()
        print(_c("[Native .so]", Style.BRIGHT) + f"  共 {len(report.native_libs)}")
        show_libs = report.native_libs if verbose else report.native_libs[:12]
        for lib in show_libs:
            print(f"  {lib}")
        if not verbose and len(report.native_libs) > 12:
            print(f"  ... 其余 {len(report.native_libs) - 12} 个，加 -v 查看")

    print()
    print(_c("[建议下一步（逆向）]", Style.BRIGHT))
    for i, step in enumerate(report.next_steps, 1):
        print(f"  {i}. {step}")
    print()


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="reapk",
        description="基于 Androguard 的 Android 逆向静态速览 CLI（Manifest/组件/权限/SDK/壳特征）",
    )
    p.add_argument("apk", help="APK 路径")
    p.add_argument("-v", "--verbose", action="store_true", help="显示全部组件与 info 级权限")
    p.add_argument(
        "--light",
        action="store_true",
        help="跳过 DEX 类统计（更快，壳启发式变弱）",
    )
    p.add_argument(
        "-o",
        "--json",
        dest="json_out",
        metavar="FILE",
        help="同时将完整结果写入 JSON（UTF-8）",
    )
    p.add_argument(
        "--report",
        metavar="FILE",
        help="将彩色关闭后的文本报告写入文件（UTF-8，避免 Windows 控制台乱码）",
    )
    p.add_argument(
        "--json-only",
        action="store_true",
        help="只输出 JSON 到 stdout（不加颜色报告）",
    )
    return p


def _configure_stdio() -> None:
    """尽量让 Windows 控制台正确显示中文。"""
    for stream in (sys.stdout, sys.stderr):
        try:
            stream.reconfigure(encoding="utf-8")  # type: ignore[attr-defined]
        except Exception:
            pass


def main(argv: list[str] | None = None) -> int:
    _configure_stdio()
    args = build_parser().parse_args(argv)
    apk_path = Path(args.apk)
    if not apk_path.is_file():
        print(f"错误: 找不到 APK: {apk_path}", file=sys.stderr)
        return 2

    try:
        report = ApkReAnalyzer(apk_path, light=args.light).analyze()
    except Exception as exc:
        print(f"分析失败: {exc}", file=sys.stderr)
        return 1

    if args.json_only:
        print(json.dumps(report.to_dict(), ensure_ascii=False, indent=2))
    else:
        print_report(report, verbose=args.verbose)

    if args.json_out:
        out = Path(args.json_out)
        out.write_text(
            json.dumps(report.to_dict(), ensure_ascii=False, indent=2),
            encoding="utf-8",
        )
        if not args.json_only:
            print(_c(f"JSON 已写入: {out.resolve()}", Fore.GREEN))

    if args.report:
        from io import StringIO
        import contextlib

        buf = StringIO()
        # 临时关闭颜色，写入纯文本
        global HAS_COLOR
        old = HAS_COLOR
        HAS_COLOR = False
        try:
            with contextlib.redirect_stdout(buf):
                print_report(report, verbose=args.verbose)
        finally:
            HAS_COLOR = old
        Path(args.report).write_text(buf.getvalue(), encoding="utf-8")
        if not args.json_only:
            print(_c(f"报告已写入: {Path(args.report).resolve()}", Fore.GREEN))

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
