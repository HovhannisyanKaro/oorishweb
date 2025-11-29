import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import '../../privacy/privacy_const.dart';
import '../baby_phone_privacy_const.dart';

class BabyPhonePrivacyMobileBody extends StatefulWidget {
  const BabyPhonePrivacyMobileBody({super.key});

  @override
  State<BabyPhonePrivacyMobileBody> createState() => _BabyPhonePrivacyMobileBodyState();
}

class _BabyPhonePrivacyMobileBodyState extends State<BabyPhonePrivacyMobileBody> {
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
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
      },
    );
  }
}
