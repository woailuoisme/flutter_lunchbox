// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 签到 Provider

@ProviderFor(CheckinNotifier)
final checkinProvider = CheckinNotifierProvider._();

/// 签到 Provider
final class CheckinNotifierProvider
    extends $AsyncNotifierProvider<CheckinNotifier, CheckinState> {
  /// 签到 Provider
  CheckinNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkinProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkinNotifierHash();

  @$internal
  @override
  CheckinNotifier create() => CheckinNotifier();
}

String _$checkinNotifierHash() => r'907f7b4373f4b19645a844a76d7c5e05a82c162c';

/// 签到 Provider

abstract class _$CheckinNotifier extends $AsyncNotifier<CheckinState> {
  FutureOr<CheckinState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<CheckinState>, CheckinState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CheckinState>, CheckinState>,
              AsyncValue<CheckinState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
