import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import '../privacy_const.dart';

class PrivacyMobileBody extends StatefulWidget {
  const PrivacyMobileBody({super.key});

  @override
  State<PrivacyMobileBody> createState() => _PrivacyMobileBodyState();
}

class _PrivacyMobileBodyState extends State<PrivacyMobileBody> {
  DashboardTabEnum dashboardTabArgs(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    return args is DashboardTabEnum ? args : DashboardTabEnum.home;
  }

  @override
  Widget build(BuildContext context) {
    final args = dashboardTabArgs(context);
    final themeExt = context.themeExt;
    return DashboardMobileBodyLayout(
      selectedTab: args,
      childBuilder: (context, constraints) {
        final width = constraints.maxWidth;
        final headerImageSize = width / 1.2;
        return Column(
          children: [
            const SizedBox(height: 32),
            Text('Privacy Policy', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: themeExt.primary)),
            const SizedBox(height: 32),
            Text(privacyValueVersion2, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 64),
            Text('Terms And Conditions', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: themeExt.primary)),
            const SizedBox(height: 32),
            Text(termsValueVersion2, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
          ],
        );
      },
    );
  }
}
