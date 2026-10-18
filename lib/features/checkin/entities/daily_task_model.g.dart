// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyTaskModel _$DailyTaskModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_DailyTaskModel',
      json,
      ($checkedConvert) {
        final val = _DailyTaskModel(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          type: $checkedConvert(
            'type',
            (v) => $enumDecode(_$DailyTaskTypeEnumMap, v),
          ),
          title: $checkedConvert('title', (v) => v as String),
          rewardPoints: $checkedConvert(
            'reward_points',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          isCompleted: $checkedConvert(
            'is_completed',
            (v) => v as bool? ?? false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'rewardPoints': 'reward_points',
        'isCompleted': 'is_completed',
      },
    );

Map<String, dynamic> _$DailyTaskModelToJson(_DailyTaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$DailyTaskTypeEnumMap[instance.type]!,
      'title': instance.title,
      'reward_points': instance.rewardPoints,
      'is_completed': instance.isCompleted,
    };

const _$DailyTaskTypeEnumMap = {
  DailyTaskType.share: 'share',
  DailyTaskType.video: 'video',
  DailyTaskType.profile: 'profile',
};
