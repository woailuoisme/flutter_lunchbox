import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox/i18n/translations.g.dart';

/// 连续签到天数卡片 + 进度条 + 迷秘奖励
class CheckinStreakCard extends StatelessWidget {
  const CheckinStreakCard({
    super.key,
    required this.streakDays,
    required this.mysteryRewardDays,
  });

  final int streakDays;
  final int mysteryRewardDays;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final progress = (streakDays / mysteryRewardDays).clamp(0.0, 1.0);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${t.checkin.streakDays}：$streakDays',
                  style: TextStyle(fontSize: 13.sp, color: theme.hintColor),
                ),
                SizedBox(height: 6.h),
                Text(
                  '$streakDays',
                  style: TextStyle(
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w900,
                    color: theme.colorScheme.primary,
                    height: 1.0,
                  ),
                ),
                SizedBox(height: 10.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.r),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 8.h,
                    backgroundColor: theme.colorScheme.primary.withValues(
                      alpha: 0.12,
                    ),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.w),
          Column(
            children: [
              GestureDetector(
                onTap: () => _showMysteryHint(context, theme),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: 56.w,
                      height: 56.w,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFFF8C42), Color(0xFFFF5252)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Center(
                        child: Text('🎁', style: TextStyle(fontSize: 28.sp)),
                      ),
                    ),
                    Container(
                      width: 18.w,
                      height: 18.w,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '?',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: theme.hintColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                t.checkin.mysteryReward,
                style: TextStyle(fontSize: 11.sp, color: theme.hintColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showMysteryHint(BuildContext context, ThemeData theme) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(t.checkin.mysteryRewardHint),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        margin: EdgeInsets.all(16.w),
      ),
    );
  }
}
