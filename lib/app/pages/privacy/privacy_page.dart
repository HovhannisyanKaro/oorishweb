import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/privacy/mobile/privacy_mobile_body.dart';
import 'package:oorishweb/app/pages/privacy/web/privacy_web_body.dart';
import 'package:oorishweb/app/views/oorish_page.dart';

import '../../enums/dashboard_tab_enum.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  DashboardTabEnum dashboardTabArgs(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    return args is DashboardTabEnum ? args : DashboardTabEnum.home;
  }

  @override
  Widget build(BuildContext context) {
    final args = dashboardTabArgs(context);
    return OorishPage(
      webBody: PrivacyWebBody(dashboardTab: args),
      mobileBody: const PrivacyMobileBody(),
      dashboardTabEnum: args,
    );
  }
}
