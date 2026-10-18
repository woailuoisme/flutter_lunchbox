import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_activity_model.freezed.dart';
part 'referral_activity_model.g.dart';

@freezed
sealed class ReferralActivityModel with _$ReferralActivityModel {
  const factory ReferralActivityModel({
    required String userName,
    required double amount,
    required DateTime timestamp,
  }) = _ReferralActivityModel;

  factory ReferralActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralActivityModelFromJson(json);
}
