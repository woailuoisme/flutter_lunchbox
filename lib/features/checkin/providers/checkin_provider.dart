import 'package:lunchbox/features/checkin/entities/checkin_status_model.dart';
import 'package:lunchbox/features/checkin/entities/daily_task_model.dart';
import 'package:lunchbox/features/checkin/providers/checkin_state.dart';
import 'package:lunchbox/features/checkin/repositories/checkin_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkin_provider.g.dart';

/// 签到 Provider
@riverpod
class CheckinNotifier extends _$CheckinNotifier {
  @override
  Future<CheckinState> build() async {
    final repo = ref.watch(checkinRepositoryProvider.notifier);

    final results = await Future.wait([
      repo.getCheckinStatus(),
      repo.getDailyTasks(),
    ]);

    return CheckinState(
      status: results[0] as CheckinStatusModel,
      tasks: results[1] as List<DailyTaskModel>,
    );
  }

  /// 执行签到
  Future<void> doCheckin() async {
    final current = state.value;
    if (current == null || current.isCheckingIn) return;
    if (current.status?.checkedToday == true) return;

    state = AsyncData(current.copyWith(isCheckingIn: true, errorMessage: null));

    try {
      final repo = ref.read(checkinRepositoryProvider.notifier);
      final points = await repo.doCheckin();

      // 更新本地状态：今日已签到，连签+1
      final updatedStatus = current.status?.copyWith(
        checkedToday: true,
        streakDays: (current.status?.streakDays ?? 0) + 1,
      );

      state = AsyncData(
        current.copyWith(
          isCheckingIn: false,
          status: updatedStatus,
          earnedPoints: points,
        ),
      );
    } catch (e) {
      state = AsyncData(
        current.copyWith(isCheckingIn: false, errorMessage: e.toString()),
      );
    }
  }

  /// 清除签到成功消息（展示后调用）
  void clearEarnedPoints() {
    final current = state.value;
    if (current == null) return;
    state = AsyncData(current.copyWith(earnedPoints: null));
  }

  /// 刷新整体状态
  void refresh() => ref.invalidateSelf();
}
