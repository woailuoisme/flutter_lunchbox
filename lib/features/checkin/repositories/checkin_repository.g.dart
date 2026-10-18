// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 签到仓库 — 使用 Mock 数据，待后端就绪替换为真实 API 调用

@ProviderFor(CheckinRepository)
final checkinRepositoryProvider = CheckinRepositoryProvider._();

/// 签到仓库 — 使用 Mock 数据，待后端就绪替换为真实 API 调用
final class CheckinRepositoryProvider
    extends $AsyncNotifierProvider<CheckinRepository, void> {
  /// 签到仓库 — 使用 Mock 数据，待后端就绪替换为真实 API 调用
  CheckinRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkinRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkinRepositoryHash();

  @$internal
  @override
  CheckinRepository create() => CheckinRepository();
}

String _$checkinRepositoryHash() => r'39700f41da774773be30369d70b9d7108c653a4f';

/// 签到仓库 — 使用 Mock 数据，待后端就绪替换为真实 API 调用

abstract class _$CheckinRepository extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
