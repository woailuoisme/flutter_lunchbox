# AGENTS

Lunchbox 项目大模型协作简版规范。

## 项目上下文

- 技术栈（基于当前 `pubspec.yaml`）：
- 核心：Flutter (SDK `^3.10.8`)、Dart
- 状态管理：`flutter_riverpod`、`riverpod_annotation`
- 路由与网络：`go_router`、`dio`、`dio_http2_adapter`、`retrofit`、`connectivity_plus`
- 本地存储：`shared_preferences`、`flutter_secure_storage`、`drift`、`drift_flutter`
- UI 与动效：`flutter_screenutil`、`flex_color_scheme`、`flutter_svg`、`flutter_animate`、`animations`、`cached_network_image`、`skeletonizer`
- 地图与定位：`flutter_map`、`geolocator`、`latlong2`
- 业务能力：`flutter_stripe`、`google_sign_in`、`slang_flutter`、`flutter_form_builder`
- 监控与日志：`sentry_flutter`、`sentry_dio`、`talker_flutter`、`talker_dio_logger`
- 模型与序列化：`freezed_annotation`
- 代码生成：`build_runner`、`riverpod_generator`、`retrofit_generator`、`freezed`、`json_serializable`、`drift_dev`、`go_router_builder`
- 结构：Feature-First（`lib/features`）
- 关键目录：`lib/`、`test/`、`docs/`、`scripts/`
- 工具链：Flutter 3.47.7、JDK 21（`.mise.toml` 固定）
- Android：AGP 9.0.1 + Gradle 9.1.0 + built-in Kotlin，**不要**再给 app 应用 `kotlin-android`
- iOS：Swift Package Manager，不使用 CocoaPods
- 本地数据库：`lib/core/services/app_database.dart`（drift），由 `main()` 打开并注入 `appDatabaseProvider`

## 推荐 Skills

优先按场景启用以下 skills：

- 默认 Flutter 开发：`flutter-expert`、`dart-expert`
- 状态管理/Riverpod：`flutter-riverpod-expert`
- 架构与模块拆分：`flutter-architecture`、`refactor:flutter`
- 测试相关：`flutter-testing`、`flutter-testing-apps`
- 调试问题：`debugger`、`systematic-debugging`

## 开发规则

- 只做与任务直接相关的最小改动。
- 功能代码放对应 `feature`，公共能力放 `lib/shared` 或 `lib/core`。
- 保持现有命名与代码风格，不做无关重构。
- 非必要不改构建脚本、CI、支付主流程和全局路由。

## 依赖升级策略

- `Patch`（补丁版本）：可直接升级，但必须通过 `just analyze` + `just test`。
- `Minor`（小版本）：允许升级，需补充受影响模块的功能回归说明。
- `Major`（大版本）：默认不在业务需求中顺带升级，需单独任务和回滚预案。
- `just upgrade --major-versions` 会把 `build_runner` 改回 `^2.17.1`（要求 build 5.x，
  与 `retrofit_generator` / `json_serializable` 冲突），跑完需手动改回
  `">=2.16.2 <2.17.0"` 并执行 `just deps`。

高风险依赖（升级需重点回归）：

- 支付链路：`flutter_stripe`
- 路由链路：`go_router`
- 状态管理：`flutter_riverpod`、`riverpod_annotation`
- 数据层：`drift`、`retrofit`、`dio`
- 登录与账号：`google_sign_in`
- 可观测性：`sentry_flutter`、`sentry_dio`

## 回归检查清单

- 启动与基础导航：冷启动、首页、核心路由跳转。
- 登录与会话：登录、登出、会话恢复、鉴权拦截。
- 下单与支付：购物车、下单、支付发起、支付失败处理。
- 数据一致性：本地存储读写、列表刷新、错误重试。
- 稳定性：关键页面异常捕获与日志上报是否正常。

## 版本变更流程

- 先更新 `pubspec.yaml`，再执行 `just deps`。
- 涉及代码生成的依赖变更后执行 `just build`。
- 执行 `just analyze` 与 `just test`，记录结果。
- 在交付说明中明确：变更依赖、影响面、回归范围、风险点。

## 常用命令

```bash
just deps          # flutter pub get
just upgrade       # 升级依赖（可加 --tighten / 包名）
just outdated      # 查看可升级依赖
just build         # build_runner 全量生成
just analyze
just test
just ready
just apk [mode]    # 构建 Android 包
just signing-key   # 首次生成 release keystore
just signing-verify # 校验 APK 签名者
```

## 发布与签名

- 推 `v*` tag 触发 GitHub Actions 发版，版本号来自 `pubspec.yaml` 的 `version`。
- Release 产物：分 ABI APK（arm64-v8a / armeabi-v7a）+ AAB + 符号 zip，**不产 universal 包**。
- release 构建必须有 `android/key.properties`（缺失直接失败，禁止回落 debug 签名）；
  CI 从 `KEYSTORE_BASE64` / `KEYSTORE_PASSWORD` / `KEY_ALIAS` / `KEY_PASSWORD` 还原。
- `ENV_PROD` / `ENV_DEV` secrets 由 envied 在 build_runner 阶段读取，缺字段会导致生成失败。

或：

```bash
./scripts/manage.sh prepare
./scripts/manage.sh ready
./scripts/manage.sh test
```

## 交付要求

- 说明：改了什么、为什么改。
- 列出受影响文件。
- 标注验证结果：`just analyze` / `just test`（通过、失败或未执行原因）。
