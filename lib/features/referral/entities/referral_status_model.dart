import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_status_model.freezed.dart';
part 'referral_status_model.g.dart';

@freezed
sealed class ReferralStatusModel with _$ReferralStatusModel {
  const factory ReferralStatusModel({
    required double totalEarnings,
    required int invitedFriends,
    required String inviteCode,
  }) = _ReferralStatusModel;

  factory ReferralStatusModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralStatusModelFromJson(json);
}
