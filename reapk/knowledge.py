"""逆向分析用的权限风险、SDK 指纹与壳特征知识库。"""

from __future__ import annotations

# 权限 -> (风险级别, 逆向关注点说明)
PERMISSION_NOTES: dict[str, tuple[str, str]] = {
    "android.permission.INTERNET": ("info", "联网，抓包/定位 API 入口"),
    "android.permission.ACCESS_NETWORK_STATE": ("info", "判断网络状态"),
    "android.permission.ACCESS_WIFI_STATE": ("info", "读 WiFi 信息，常用于设备指纹"),
    "android.permission.CHANGE_WIFI_STATE": ("medium", "改 WiFi，少见业务需求"),
    "android.permission.CHANGE_NETWORK_STATE": ("medium", "改网络状态"),
    "android.permission.ACCESS_FINE_LOCATION": ("high", "精确定位，查定位 SDK / 地图 Key"),
    "android.permission.ACCESS_COARSE_LOCATION": ("high", "粗略定位"),
    "android.permission.READ_PHONE_STATE": ("high", "读设备标识，常配合加固/风控"),
    "android.permission.READ_SMS": ("critical", "读短信，验证码/隐私敏感"),
    "android.permission.RECEIVE_SMS": ("critical", "收短信广播"),
    "android.permission.SEND_SMS": ("critical", "发短信"),
    "android.permission.CALL_PHONE": ("high", "直接拨号"),
    "android.permission.CAMERA": ("high", "相机，扫码/上传场景"),
    "android.permission.RECORD_AUDIO": ("high", "录音"),
    "android.permission.WRITE_EXTERNAL_STORAGE": ("medium", "写存储，关注落地文件/缓存"),
    "android.permission.READ_EXTERNAL_STORAGE": ("medium", "读存储"),
    "android.permission.SYSTEM_ALERT_WINDOW": ("high", "悬浮窗，可被滥用"),
    "android.permission.GET_TASKS": ("medium", "读任务栈（旧权限）"),
    "android.permission.WAKE_LOCK": ("info", "保活/推送常见"),
    "android.permission.RECEIVE_BOOT_COMPLETED": ("medium", "开机自启，关注 Receiver"),
    "android.permission.REQUEST_INSTALL_PACKAGES": ("high", "静默/诱导安装相关"),
    "android.permission.QUERY_ALL_PACKAGES": ("high", "枚举已装应用"),
    "android.permission.BLUETOOTH": ("info", "蓝牙"),
    "android.permission.FLASHLIGHT": ("info", "闪光灯"),
    "android.permission.VIBRATE": ("info", "震动"),
}

# 组件/包名前缀 -> SDK 名称（按前缀长度降序匹配）
SDK_SIGNATURES: list[tuple[str, str]] = sorted(
    [
        ("com.xiaomi.mipush", "小米推送 MiPush"),
        ("com.xiaomi.push", "小米推送 MiPush"),
        ("com.tencent.tauth", "腾讯 QQ/OpenSDK"),
        ("com.tencent.connect", "腾讯 OpenSDK"),
        ("com.tencent.mm", "微信 SDK"),
        ("com.alipay.sdk", "支付宝 SDK"),
        ("com.amap.api", "高德地图/定位"),
        ("com.umeng", "友盟统计/反馈"),
        ("com.mob.tools", "Mob/ShareSDK"),
        ("cn.sharesdk", "ShareSDK"),
        ("com.sina.weibo", "微博 SDK"),
        ("com.google.android.gms", "Google Play Services"),
        ("com.facebook", "Facebook SDK"),
        ("com.huawei.hms", "华为 HMS"),
        ("com.bytedance", "字节系 SDK"),
        ("com.ss.android", "字节系 SDK"),
        ("io.flutter", "Flutter"),
        ("com.unity3d", "Unity"),
        ("com.taobao", "淘宝/阿里系"),
        ("com.aliyun", "阿里云"),
        ("okhttp3", "OkHttp"),
        ("retrofit2", "Retrofit"),
        ("com.bumptech.glide", "Glide"),
    ],
    key=lambda x: len(x[0]),
    reverse=True,
)

# Application 类名中常见壳/代理关键词
SHELL_NAME_HINTS: tuple[str, ...] = (
    "shell",
    "stub",
    "proxy",
    "wrapper",
    "protect",
    "securoid",
    "jiagu",
    "legu",
    "bangcle",
    "qihoo",
    "tencent.rfix",
    "secneo",
    "ijiami",
    "nagapt",
    "apkprotect",
    "dexprotector",
    "kiwisec",
    "netease.nis",
    "vlibrary",
    "packer",
    "encrypt",
    "loaderex",
    "helper.application",
)

# native so 名常见加固痕迹
SHELL_SO_HINTS: tuple[str, ...] = (
    "libjiagu",
    "libexec",
    "libsecexe",
    "libsecmain",
    "libdexjni",
    "libshell",
    "libxloader",
    "libprotect",
    "libkwsc",
    "libnesec",
    "libtencent",
    "libchaosvmp",
    "libbugly-native",  # 不一定是壳，仅作弱提示时不用
)

# meta-data key 中值得关注的模式
SENSITIVE_META_KEYS: tuple[str, ...] = (
    "appkey",
    "api_key",
    "apikey",
    "app_id",
    "appid",
    "channel",
    "secret",
    "token",
    "umeng",
    "amap",
    "weixin",
    "wx",
    "qq",
    "mipush",
)
