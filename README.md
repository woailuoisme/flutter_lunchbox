# 饭盒售货机应用 (Lunchbox)

## 项目概述

Lunchbox 是自动饭盒售货机的移动端应用，提供午餐购买、Stripe 支付、设备管理与地理位置服务。

## 项目特点

- **状态管理**：Riverpod 3 + `riverpod_generator`，编译期生成类型安全的 Provider。
- **目录结构**：Feature-First，按业务模块拆分，模块间通过 repository 解耦。
- **支付**：Flutter Stripe，支持 PaymentSheet 与 Payment Intent。
- **多平台**：Android（minSdk 26）与 iOS（无签名构建）。
- **国际化**：slang，支持中简 / 中繁 / 英文。

## 技术栈

| 领域 | 依赖 |
|:--|:--|
| 框架 | Flutter 3.47.7，Dart SDK `^3.10.8` |
| 状态管理 | `flutter_riverpod`、`riverpod_annotation` |
| 路由 | `go_router`、`go_router_builder` |
| 网络 | `dio`、`dio_http2_adapter`、`retrofit`、`connectivity_plus` |
| 本地存储 | `drift` + `drift_flutter`（SQLite）、`shared_preferences`、`flutter_secure_storage` |
| UI | `material_ui`、`flex_color_scheme`、`flutter_screenutil`、`material_symbols_icons`、`flutter_svg`、`flutter_animate`、`cached_network_image`、`skeletonizer` |
| 地图与定位 | `flutter_map`、`geolocator`、`latlong2` |
| 业务 | `flutter_stripe`、`google_sign_in`、`flutter_form_builder`、`slang_flutter` |
| 监控 | `sentry_flutter`、`sentry_dio`、`talker_flutter`、`talker_dio_logger` |
| 代码生成 | `build_runner`、`riverpod_generator`、`retrofit_generator`、`freezed`、`json_serializable`、`drift_dev`、`envied_generator`、`go_router_builder` |

## 环境要求

- Flutter 3.47.7、JDK 21（版本由 `.mise.toml` 固定，`mise install` 即可）
- Android：AGP 9.0.1 + Gradle 9.1.0 + built-in Kotlin（未应用 `kotlin-android` 插件），compileSdk 37
- iOS：Xcode + Swift Package Manager（项目不使用 CocoaPods，`sentry_flutter` 仅提供 SPM 包）

## 架构设计

```text
lib/
├── core/                # 网络、错误、服务、主题、环境变量等基础设施
│   ├── env/             # envied 编译期环境变量
│   └── services/        # database / storage / api 等全局服务
├── features/            # 业务模块（auth、product、cart、order、payment…）
├── i18n/                # slang 生成的翻译
├── routes/              # go_router 路由与守卫
└── main.dart            # 入口
```

- **Repository Pattern**：隔离数据源与业务逻辑。
- **Riverpod Provider**：服务与仓库通过 Provider 注入，UI 只读状态。
- **本地数据库**：`AppDatabase`（drift）由 `main()` 打开后通过 `appDatabaseProvider` 注入。

## 开发命令

统一入口是 `justfile`（底层复用 `scripts/manage.sh`）。

| 命令 | 说明 |
|:--|:--|
| `just prepare` | 拉依赖 + 生成代码 |
| `just deps` | `flutter pub get` |
| `just upgrade [--tighten] [包名]` | 升级依赖，`--tighten` 同步 pubspec 下界 |
| `just outdated` | 查看可升级依赖 |
| `just build` | build_runner 全量生成 |
| `just watch` | build_runner 监听 |
| `just analyze` / `just lint` | 静态分析 |
| `just format` / `just fix` | 格式化 / 自动修复 |
| `just test` | 运行测试 |
| `just ready` / `just check` | 提交前检查（format + fix + analyze） |
| `just clean` | 清理构建产物 |
| `just run` / `just apk [mode]` / `just ios` / `just install` | 运行与构建 |

`just upgrade --major-versions` 会把 `build_runner` 顶到 2.17+，
而 `retrofit_generator` / `json_serializable` 仍依赖 `build 4.x`，
跑完必须把约束改回 `">=2.16.2 <2.17.0"`。

## 发布与签名

版本号取自 `pubspec.yaml` 的 `version`，推送 `v*` tag 触发 GitHub Actions 发版：

```bash
git tag v1.0.0 && git push origin v1.0.0
```

流水线产物（Release 附件）：

```text
lunchbox_<version>_arm64-v8a.apk
lunchbox_<version>_armeabi-v7a.apk
lunchbox_<version>.aab
lunchbox_<version>_symbols-apk.zip
```

**签名**：release 构建强制要求 `android/key.properties`，缺失时直接失败（不再回落到 debug 签名）。本地首次准备：

```bash
just signing-key        # 生成 android/app/upload-keystore.jks
just signing-base64     # 输出 base64，填入 GitHub Secret KEYSTORE_BASE64
just signing-verify     # 校验已构建 APK 的签名者
```

CI 需要的 secrets：`KEYSTORE_BASE64`、`KEYSTORE_PASSWORD`、`KEY_ALIAS`、`KEY_PASSWORD`，
以及 `ENV_PROD` / `ENV_DEV`（envied 编译期读取，缺 key 会让 build_runner 失败）。

keystore 与密码必须离线备份：丢失后已安装用户无法升级。

## 许可证

本项目采用 MIT 许可证（仓库内暂无 LICENSE 文件，需补充）。
