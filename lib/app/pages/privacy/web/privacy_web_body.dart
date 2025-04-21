import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/web/footer_web.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/web/dashboard/dashboard_web_layout.dart';
import '../privacy_const.dart';

class PrivacyWebBody extends StatelessWidget {
  final DashboardTabEnum dashboardTab;

  const PrivacyWebBody({super.key, this.dashboardTab = DashboardTabEnum.home});

  @override
  Widget build(BuildContext context) {
    final themeExt = context.themeExt;
    return DashboardWebLayout(
        selectedTab: dashboardTab,
        childBuilder: (context, constraints) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Text('Privacy Policy', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: themeExt.primary)),
                    const SizedBox(height: 32),
                    Text(privacyValue, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 64),
                    Text('Terms And Conditions', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: themeExt.primary)),
                    const SizedBox(height: 32),
                    Text(termsValue, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              FooterWeb(dashboardTab: dashboardTab, isPrivacyClickable: false),
            ],
          );
        });
  }
}
