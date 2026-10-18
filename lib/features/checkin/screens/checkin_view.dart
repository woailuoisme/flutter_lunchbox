import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox/features/checkin/providers/checkin_provider.dart';
import 'package:lunchbox/features/checkin/widgets/checkin_calendar_grid.dart';
import 'package:lunchbox/features/checkin/widgets/checkin_streak_card.dart';
import 'package:lunchbox/features/checkin/widgets/daily_task_item.dart';
import 'package:lunchbox/i18n/translations.g.dart';

class CheckinView extends ConsumerWidget {
  const CheckinView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkinProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.checkin.title), centerTitle: true),
      body: state.when(
        data: (data) => RefreshIndicator(
          onRefresh: () async => ref.read(checkinProvider.notifier).refresh(),
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            children: [
              if (data.status != null) ...[
                CheckinStreakCard(
                  streakDays: data.status!.streakDays,
                  mysteryRewardDays: data.status!.mysteryRewardDays,
                ),
                SizedBox(height: 20.h),
                CheckinCalendarGrid(weekDays: data.status!.weekDays),
                SizedBox(height: 24.h),
                _buildCheckinButton(
                  context,
                  ref,
                  data.status!.checkedToday,
                  data.isCheckingIn,
                ),
                SizedBox(height: 32.h),
              ],
              _buildSectionTitle(context, t.checkin.dailyTasks),
              SizedBox(height: 12.h),
              if (data.tasks.isEmpty)
                Center(child: Text(t.checkin.noTasks))
              else
                ...data.tasks.map(
                  (task) => DailyTaskItem(
                    task: task,
                    onTap: () {
                      // Handle task navigation/action
                    },
                  ),
                ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${t.common.error}: $err'),
              ElevatedButton(
                onPressed: () => ref.read(checkinProvider.notifier).refresh(),
                child: Text(t.common.retry),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckinButton(
    BuildContext context,
    WidgetRef ref,
    bool checkedToday,
    bool isCheckingIn,
  ) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ElevatedButton(
        onPressed: (checkedToday || isCheckingIn)
            ? null
            : () => ref.read(checkinProvider.notifier).doCheckin(),
        style: ElevatedButton.styleFrom(
          backgroundColor: checkedToday
              ? theme.disabledColor
              : theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
          minimumSize: Size(double.infinity, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
        child: isCheckingIn
            ? SizedBox(
                width: 20.w,
                height: 20.w,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.onPrimary,
                  ),
                ),
              )
            : Text(
                checkedToday ? t.checkin.alreadyChecked : t.checkin.doCheckin,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Text(
        title,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
