import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunchbox/features/referral/entities/referral_activity_model.dart';
import 'package:lunchbox/features/referral/entities/referral_status_model.dart';

part 'referral_state.freezed.dart';

@freezed
abstract class ReferralState with _$ReferralState {
  const factory ReferralState({
    ReferralStatusModel? status,
    @Default([]) List<ReferralActivityModel> activities,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ReferralState;
}
