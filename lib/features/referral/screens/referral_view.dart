import 'package:material_ui/material_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lunchbox/features/referral/providers/referral_provider.dart';
import 'package:lunchbox/features/referral/widgets/referral_activity_list.dart';
import 'package:lunchbox/features/referral/widgets/referral_earnings_card.dart';
import 'package:lunchbox/features/referral/widgets/referral_workflow.dart';
import 'package:lunchbox/i18n/translations.g.dart';

class ReferralView extends ConsumerWidget {
  const ReferralView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(referralProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.referral.title), centerTitle: true),
      body: state.when(
        data: (data) => RefreshIndicator(
          onRefresh: () async => ref.read(referralProvider.notifier).refresh(),
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            children: [
              if (data.status != null)
                ReferralEarningsCard(
                  totalEarnings: data.status!.totalEarnings,
                  invitedFriends: data.status!.invitedFriends,
                  inviteCode: data.status!.inviteCode,
                ),
              SizedBox(height: 24.h),
              const ReferralWorkflow(),
              SizedBox(height: 24.h),
              ReferralActivityList(activities: data.activities),
              SizedBox(height: 32.h),
              _buildShareButton(context),
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
                onPressed: () => ref.read(referralProvider.notifier).refresh(),
                child: Text(t.common.retry),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShareButton(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ElevatedButton(
        onPressed: () {
          // Share logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
          minimumSize: Size(double.infinity, 52.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 2,
        ),
        child: Text(
          t.referral.shareNow,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
