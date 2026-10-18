import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox/features/checkin/entities/checkin_status_model.dart';
import 'package:lunchbox/i18n/translations.g.dart';

/// 7 天签到日历网格
class CheckinCalendarGrid extends StatelessWidget {
  const CheckinCalendarGrid({super.key, required this.weekDays});

  final List<WeekDayInfo> weekDays;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: weekDays.map((day) => _DayCell(day: day)).toList(),
      ),
    );
  }
}

class _DayCell extends StatelessWidget {
  const _DayCell({required this.day});

  final WeekDayInfo day;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final weekdayLabels = [
      t.checkin.weekdays.mon,
      t.checkin.weekdays.tue,
      t.checkin.weekdays.wed,
      t.checkin.weekdays.thu,
      t.checkin.weekdays.fri,
      t.checkin.weekdays.sat,
      t.checkin.weekdays.sun,
    ];
    final label = weekdayLabels[day.weekday - 1];

    return SizedBox(
      width: 42.w,
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: day.status == DayStatus.pending
                  ? theme.colorScheme.primary
                  : theme.hintColor,
            ),
          ),
          SizedBox(height: 6.h),
          _buildDayBadge(context, theme),
          SizedBox(height: 4.h),
          Text(
            day.dateLabel,
            style: TextStyle(
              fontSize: 9.sp,
              color:
                  day.status == DayStatus.future ||
                      day.status == DayStatus.missed
                  ? theme.disabledColor
                  : theme.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDayBadge(BuildContext context, ThemeData theme) {
    switch (day.status) {
      case DayStatus.checked:
        return Container(
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(
            color: const Color(0xFF4CAF50).withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: const Color(0xFF4CAF50), width: 1.5),
          ),
          child: Icon(
            Icons.check_circle,
            color: const Color(0xFF4CAF50),
            size: 20.sp,
          ),
        );
      case DayStatus.pending:
        return Container(
          width: 40.w,
          height: 40.w,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: theme.colorScheme.primary, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check, color: theme.colorScheme.primary, size: 16.sp),
              Text(
                t.checkin.today,
                style: TextStyle(
                  fontSize: 8.sp,
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      case DayStatus.missed:
        return Container(
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(
            color: const Color(0xFFFFE0B2),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(
            Icons.schedule,
            color: const Color(0xFFFF9800),
            size: 18.sp,
          ),
        );
      case DayStatus.future:
        return Container(
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(
            Icons.circle_outlined,
            color: theme.disabledColor,
            size: 18.sp,
          ),
        );
    }
  }
}
