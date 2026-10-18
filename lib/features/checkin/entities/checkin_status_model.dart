import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkin_status_model.freezed.dart';
part 'checkin_status_model.g.dart';

/// 单日签到状态
enum DayStatus { checked, pending, future, missed }

/// 本周某天签到信息
@freezed
abstract class WeekDayInfo with _$WeekDayInfo {
  const factory WeekDayInfo({
    /// 星期几 (1=Mon … 7=Sun)
    required int weekday,

    /// 日期展示 (e.g. "Oct 24")
    required String dateLabel,

    /// 签到状态
    required DayStatus status,
  }) = _WeekDayInfo;

  factory WeekDayInfo.fromJson(Map<String, dynamic> json) =>
      _$WeekDayInfoFromJson(json);
}

/// 签到状态总览
@freezed
abstract class CheckinStatusModel with _$CheckinStatusModel {
  const factory CheckinStatusModel({
    /// 连续签到天数
    @JsonKey(name: 'streak_days') @Default(0) int streakDays,

    /// 今日是否已签到
    @JsonKey(name: 'checked_today') @Default(false) bool checkedToday,

    /// 本周7天签到状态列表
    @JsonKey(name: 'week_days') @Default([]) List<WeekDayInfo> weekDays,

    /// 神秘奖励解锁所需天数
    @JsonKey(name: 'mystery_reward_days') @Default(7) int mysteryRewardDays,
  }) = _CheckinStatusModel;

  factory CheckinStatusModel.fromJson(Map<String, dynamic> json) =>
      _$CheckinStatusModelFromJson(json);
}
