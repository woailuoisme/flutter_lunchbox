// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReferralNotifier)
final referralProvider = ReferralNotifierProvider._();

final class ReferralNotifierProvider
    extends $AsyncNotifierProvider<ReferralNotifier, ReferralState> {
  ReferralNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'referralProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$referralNotifierHash();

  @$internal
  @override
  ReferralNotifier create() => ReferralNotifier();
}

String _$referralNotifierHash() => r'edbbe40b4205852365299cf43fdc62ae89f18e21';

abstract class _$ReferralNotifier extends $AsyncNotifier<ReferralState> {
  FutureOr<ReferralState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ReferralState>, ReferralState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ReferralState>, ReferralState>,
              AsyncValue<ReferralState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
