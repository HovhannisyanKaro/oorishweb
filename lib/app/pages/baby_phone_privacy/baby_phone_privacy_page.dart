import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/baby_phone_privacy/mobile/baby_phone_privacy_mobile_body.dart';
import 'package:oorishweb/app/pages/baby_phone_privacy/web/baby_phone_privacy_web_body.dart';
import 'package:oorishweb/app/views/oorish_page.dart';

import '../../enums/dashboard_tab_enum.dart';

class BabyPhonePrivacy extends StatelessWidget {
  const BabyPhonePrivacy({super.key});

  DashboardTabEnum dashboardTabArgs(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    return args is DashboardTabEnum ? args : DashboardTabEnum.home;
  }

  @override
  Widget build(BuildContext context) {
    final args = dashboardTabArgs(context);

    return OorishPage(
      webBody: BabyPhonePrivacyWebBody(dashboardTab: args),
      mobileBody: BabyPhonePrivacyMobileBody(),
      dashboardTabEnum: args,
    );
  }
}
