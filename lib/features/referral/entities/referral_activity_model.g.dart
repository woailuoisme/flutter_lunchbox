// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferralActivityModel _$ReferralActivityModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_ReferralActivityModel', json, ($checkedConvert) {
  final val = _ReferralActivityModel(
    userName: $checkedConvert('user_name', (v) => v as String),
    amount: $checkedConvert('amount', (v) => (v as num).toDouble()),
    timestamp: $checkedConvert('timestamp', (v) => DateTime.parse(v as String)),
  );
  return val;
}, fieldKeyMap: const {'userName': 'user_name'});

Map<String, dynamic> _$ReferralActivityModelToJson(
  _ReferralActivityModel instance,
) => <String, dynamic>{
  'user_name': instance.userName,
  'amount': instance.amount,
  'timestamp': instance.timestamp.toIso8601String(),
};
