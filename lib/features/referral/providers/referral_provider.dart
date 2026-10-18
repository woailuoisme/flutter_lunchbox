import 'package:lunchbox/features/referral/entities/referral_activity_model.dart';
import 'package:lunchbox/features/referral/entities/referral_status_model.dart';
import 'package:lunchbox/features/referral/providers/referral_state.dart';
import 'package:lunchbox/features/referral/repositories/referral_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'referral_provider.g.dart';

@riverpod
class ReferralNotifier extends _$ReferralNotifier {
  @override
  Future<ReferralState> build() async {
    final repo = ref.watch(referralRepositoryProvider.notifier);

    final results = await Future.wait([
      repo.getReferralStatus(),
      repo.getRecentActivities(),
    ]);

    return ReferralState(
      status: results[0] as ReferralStatusModel,
      activities: results[1] as List<ReferralActivityModel>,
    );
  }

  void refresh() => ref.invalidateSelf();
}
