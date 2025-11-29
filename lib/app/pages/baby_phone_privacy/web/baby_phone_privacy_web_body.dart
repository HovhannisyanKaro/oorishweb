import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/web/dashboard/dashboard_web_layout.dart';
import '../../privacy/privacy_const.dart';
import '../baby_phone_privacy_const.dart';

class BabyPhonePrivacyWebBody extends StatelessWidget {
  final DashboardTabEnum dashboardTab;

  const BabyPhonePrivacyWebBody({super.key, this.dashboardTab = DashboardTabEnum.home});

  @override
  Widget build(BuildContext context) {
    final themeExt = context.themeExt;
    return DashboardWebLayout(
        selectedTab: dashboardTab,
        childBuilder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              children: [
                const SizedBox(height: 32),
                Text('Privacy Policy', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: themeExt.primary)),
                const SizedBox(height: 32),
                Text(babyPhonePrivacyValue, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 64),
                Text('Terms And Conditions', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: themeExt.primary)),
                const SizedBox(height: 32),
                Text(babyPhoneTermsValue, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          );
        });
  }
}
