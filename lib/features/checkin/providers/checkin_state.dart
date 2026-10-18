import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lunchbox/features/checkin/entities/checkin_status_model.dart';
import 'package:lunchbox/features/checkin/entities/daily_task_model.dart';

part 'checkin_state.freezed.dart';

/// 签到页面状态
@freezed
abstract class CheckinState with _$CheckinState {
  const factory CheckinState({
    /// 签到状态数据
    CheckinStatusModel? status,

    /// 每日任务列表
    @Default([]) List<DailyTaskModel> tasks,

    /// 是否正在处理签到
    @Default(false) bool isCheckingIn,

    /// 签到成功后的积分奖励（null=未签到）
    int? earnedPoints,

    /// 错误信息
    String? errorMessage,
  }) = _CheckinState;
}
