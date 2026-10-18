import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lunchbox/features/referral/entities/referral_activity_model.dart';
import 'package:lunchbox/i18n/translations.g.dart';

class ReferralActivityList extends StatelessWidget {
  const ReferralActivityList({super.key, required this.activities});

  final List<ReferralActivityModel> activities;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.referral.recentActivity,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12.h),
          if (activities.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Center(
                child: Text(
                  t.referral.noActivity,
                  style: TextStyle(color: theme.hintColor),
                ),
              ),
            )
          else
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: activities.length,
              separatorBuilder: (context, index) => Divider(
                height: 1,
                color: theme.dividerColor.withValues(alpha: 0.05),
              ),
              itemBuilder: (context, index) {
                final activity = activities[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18.r,
                        backgroundColor: Colors.grey.shade100,
                        child: Icon(
                          Icons.person,
                          size: 20.sp,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              activity.userName,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              DateFormat(
                                'yyyy-MM-dd HH:mm',
                              ).format(activity.timestamp),
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: theme.hintColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+\$${activity.amount.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF4CAF50),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
