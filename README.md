# android_reverse

Android 逆向学习仓库：静态分析笔记 + 基于 [Androguard](https://github.com/androguard/androguard) 的 Manifest/结构速览 CLI（`reapk`）。

## reapk 快速使用

```bash
pip install -r reapk/requirements.txt

# 在仓库根目录执行
python -m reapk path/to/app.apk
python -m reapk path/to/app.apk -v
python -m reapk path/to/app.apk --light --report out.txt -o out.json
```

### 能力概览

- Application / LAUNCHER 入口
- 权限风险分级（逆向关注点说明）
- 导出组件、intent-filter、Deep Link
- 第三方 SDK 指纹（推送/支付/地图等）
- 壳/加固启发式 + 建议下一步

```bash
python -m reapk -h
```

## 仓库说明

| 路径 | 说明 |
|---|---|
| `reapk/` | Androguard 逆向静态 CLI |
| `学习笔记` | 壳入口 / 正常包分析流程笔记 |
| `初步分析结果.txt` | 样本初步结论 |

本地解包目录、APK 二进制默认被 `.gitignore` 忽略，请自行准备样本后再分析。

## 免责声明

仅用于合法授权的安全研究与自我学习，请遵守当地法律法规与应用服务条款。
