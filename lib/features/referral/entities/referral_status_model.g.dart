// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferralStatusModel _$ReferralStatusModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_ReferralStatusModel',
      json,
      ($checkedConvert) {
        final val = _ReferralStatusModel(
          totalEarnings: $checkedConvert(
            'total_earnings',
            (v) => (v as num).toDouble(),
          ),
          invitedFriends: $checkedConvert(
            'invited_friends',
            (v) => (v as num).toInt(),
          ),
          inviteCode: $checkedConvert('invite_code', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalEarnings': 'total_earnings',
        'invitedFriends': 'invited_friends',
        'inviteCode': 'invite_code',
      },
    );

Map<String, dynamic> _$ReferralStatusModelToJson(
  _ReferralStatusModel instance,
) => <String, dynamic>{
  'total_earnings': instance.totalEarnings,
  'invited_friends': instance.invitedFriends,
  'invite_code': instance.inviteCode,
};
