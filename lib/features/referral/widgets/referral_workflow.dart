import 'package:material_ui/material_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox/i18n/translations.g.dart';

class ReferralWorkflow extends StatelessWidget {
  const ReferralWorkflow({super.key});

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
            t.referral.howItWorks,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStep(
                context,
                Icons.share_rounded,
                t.referral.step1Title,
                t.referral.step1Desc,
              ),
              _buildArrow(),
              _buildStep(
                context,
                Icons.person_add_rounded,
                t.referral.step2Title,
                t.referral.step2Desc,
              ),
              _buildArrow(),
              _buildStep(
                context,
                Icons.card_giftcard_rounded,
                t.referral.step3Title,
                t.referral.step3Desc,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStep(
    BuildContext context,
    IconData icon,
    String title,
    String desc,
  ) {
    final theme = Theme.of(context);
    return SizedBox(
      width: 90.w,
      child: Column(
        children: [
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: theme.colorScheme.primary, size: 22.sp),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.h),
          Text(
            desc,
            style: TextStyle(fontSize: 10.sp, color: theme.hintColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildArrow() {
    return Icon(
      Icons.chevron_right_rounded,
      color: Colors.grey.shade300,
      size: 20.sp,
    );
  }
}
