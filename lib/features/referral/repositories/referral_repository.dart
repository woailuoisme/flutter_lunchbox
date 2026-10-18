import 'package:lunchbox/features/referral/entities/referral_activity_model.dart';
import 'package:lunchbox/features/referral/entities/referral_status_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'referral_repository.g.dart';

@riverpod
class ReferralRepository extends _$ReferralRepository {
  @override
  FutureOr<void> build() {}

  Future<ReferralStatusModel> getReferralStatus() async {
    await Future<void>.delayed(const Duration(milliseconds: 600));
    return const ReferralStatusModel(
      totalEarnings: 1250.00,
      invitedFriends: 12,
      inviteCode: 'LUNCHBOX888',
    );
  }

  Future<List<ReferralActivityModel>> getRecentActivities() async {
    await Future<void>.delayed(const Duration(milliseconds: 800));
    final now = DateTime.now();
    return [
      ReferralActivityModel(
        userName: 'User***1',
        amount: 50.0,
        timestamp: now.subtract(const Duration(minutes: 5)),
      ),
      ReferralActivityModel(
        userName: 'User***2',
        amount: 25.0,
        timestamp: now.subtract(const Duration(hours: 1)),
      ),
      ReferralActivityModel(
        userName: 'User***3',
        amount: 100.0,
        timestamp: now.subtract(const Duration(hours: 3)),
      ),
    ];
  }
}
