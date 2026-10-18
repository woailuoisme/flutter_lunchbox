import 'package:lunchbox/features/checkin/entities/checkin_status_model.dart';
import 'package:lunchbox/features/checkin/entities/daily_task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkin_repository.g.dart';

/// 签到仓库 — 使用 Mock 数据，待后端就绪替换为真实 API 调用
@riverpod
class CheckinRepository extends _$CheckinRepository {
  @override
  FutureOr<void> build() {}

  /// 获取签到状态（Mock 数据）
  Future<CheckinStatusModel> getCheckinStatus() async {
    await Future<void>.delayed(const Duration(milliseconds: 600));

    final now = DateTime.now();
    final weekday = now.weekday; // 1=Mon…7=Sun

    // 构造本周 7 天数据，今天之前已签，今天待签，之后为 future
    final weekDays = List.generate(7, (i) {
      final dayDate = now.subtract(Duration(days: weekday - 1 - i));
      final label = '${_monthAbbr(dayDate.month)} ${dayDate.day}';
      DayStatus status;
      if (i + 1 < weekday) {
        // 模拟：前3天已签（Mon、Tue、Wed），Thu 以前未签
        status = (i < 3) ? DayStatus.checked : DayStatus.missed;
      } else if (i + 1 == weekday) {
        status = DayStatus.pending; // 今天待签
      } else {
        status = DayStatus.future;
      }
      return WeekDayInfo(weekday: i + 1, dateLabel: label, status: status);
    });

    return CheckinStatusModel(
      streakDays: 3,
      checkedToday: false,
      weekDays: weekDays,
      mysteryRewardDays: 7,
    );
  }

  /// 执行签到（Mock）
  Future<int> doCheckin() async {
    await Future<void>.delayed(const Duration(milliseconds: 800));
    return 10; // 返回获得积分
  }

  /// 获取每日任务（Mock）
  Future<List<DailyTaskModel>> getDailyTasks() async {
    await Future<void>.delayed(const Duration(milliseconds: 400));
    return [
      const DailyTaskModel(
        id: 1,
        type: DailyTaskType.share,
        title: '分享好友',
        rewardPoints: 50,
        isCompleted: false,
      ),
      const DailyTaskModel(
        id: 2,
        type: DailyTaskType.video,
        title: '观看短视频',
        rewardPoints: 100,
        isCompleted: false,
      ),
      const DailyTaskModel(
        id: 3,
        type: DailyTaskType.profile,
        title: '完善资料',
        rewardPoints: 100,
        isCompleted: true,
      ),
    ];
  }

  String _monthAbbr(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }
}
