import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox/features/checkin/entities/daily_task_model.dart';
import 'package:lunchbox/i18n/translations.g.dart';

class DailyTaskItem extends StatelessWidget {
  const DailyTaskItem({super.key, required this.task, this.onTap});

  final DailyTaskModel task;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: theme.cardColor,
        border: Border(
          bottom: BorderSide(
            color: theme.dividerColor.withValues(alpha: 0.05),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          _buildIcon(theme),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  '+${task.rewardPoints} ${t.checkin.points}',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          _buildActionButton(theme),
        ],
      ),
    );
  }

  Widget _buildIcon(ThemeData theme) {
    IconData iconData;
    Color color;

    switch (task.type) {
      case DailyTaskType.share:
        iconData = Icons.share_rounded;
        color = Colors.blue;
      case DailyTaskType.video:
        iconData = Icons.play_circle_outline_rounded;
        color = Colors.red;
      case DailyTaskType.profile:
        iconData = Icons.person_outline_rounded;
        color = Colors.orange;
    }

    return Container(
      width: 40.w,
      height: 40.w,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(iconData, color: color, size: 20.sp),
    );
  }

  Widget _buildActionButton(ThemeData theme) {
    if (task.isCompleted) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: theme.disabledColor.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          t.checkin.completed,
          style: TextStyle(
            fontSize: 12.sp,
            color: theme.disabledColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Text(
        t.checkin.goFinish,
        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
      ),
    );
  }
}
