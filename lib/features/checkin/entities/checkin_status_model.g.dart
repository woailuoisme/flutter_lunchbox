// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeekDayInfo _$WeekDayInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_WeekDayInfo', json, ($checkedConvert) {
      final val = _WeekDayInfo(
        weekday: $checkedConvert('weekday', (v) => (v as num).toInt()),
        dateLabel: $checkedConvert('date_label', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$DayStatusEnumMap, v),
        ),
      );
      return val;
    }, fieldKeyMap: const {'dateLabel': 'date_label'});

Map<String, dynamic> _$WeekDayInfoToJson(_WeekDayInfo instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'date_label': instance.dateLabel,
      'status': _$DayStatusEnumMap[instance.status]!,
    };

const _$DayStatusEnumMap = {
  DayStatus.checked: 'checked',
  DayStatus.pending: 'pending',
  DayStatus.future: 'future',
  DayStatus.missed: 'missed',
};

_CheckinStatusModel _$CheckinStatusModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      '_CheckinStatusModel',
      json,
      ($checkedConvert) {
        final val = _CheckinStatusModel(
          streakDays: $checkedConvert(
            'streak_days',
            (v) => (v as num?)?.toInt() ?? 0,
          ),
          checkedToday: $checkedConvert(
            'checked_today',
            (v) => v as bool? ?? false,
          ),
          weekDays: $checkedConvert(
            'week_days',
            (v) =>
                (v as List<dynamic>?)
                    ?.map(
                      (e) => WeekDayInfo.fromJson(e as Map<String, dynamic>),
                    )
                    .toList() ??
                const [],
          ),
          mysteryRewardDays: $checkedConvert(
            'mystery_reward_days',
            (v) => (v as num?)?.toInt() ?? 7,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'streakDays': 'streak_days',
        'checkedToday': 'checked_today',
        'weekDays': 'week_days',
        'mysteryRewardDays': 'mystery_reward_days',
      },
    );

Map<String, dynamic> _$CheckinStatusModelToJson(_CheckinStatusModel instance) =>
    <String, dynamic>{
      'streak_days': instance.streakDays,
      'checked_today': instance.checkedToday,
      'week_days': instance.weekDays.map((e) => e.toJson()).toList(),
      'mystery_reward_days': instance.mysteryRewardDays,
    };
