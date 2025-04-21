import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/help_center/mobile/help_center_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/web/help_center_web_body.dart';

import '../../views/oorish_page.dart';

class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: HelpCenterWebBody(),
      mobileBody: HelpCenterMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
