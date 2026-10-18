import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_task_model.freezed.dart';
part 'daily_task_model.g.dart';

/// 每日任务类型
enum DailyTaskType { share, video, profile }

/// 每日任务
@freezed
abstract class DailyTaskModel with _$DailyTaskModel {
  const factory DailyTaskModel({
    /// 任务ID
    required int id,

    /// 任务类型
    required DailyTaskType type,

    /// 任务标题
    required String title,

    /// 奖励积分
    @JsonKey(name: 'reward_points') @Default(0) int rewardPoints,

    /// 是否已完成
    @JsonKey(name: 'is_completed') @Default(false) bool isCompleted,
  }) = _DailyTaskModel;

  factory DailyTaskModel.fromJson(Map<String, dynamic> json) =>
      _$DailyTaskModelFromJson(json);
}
