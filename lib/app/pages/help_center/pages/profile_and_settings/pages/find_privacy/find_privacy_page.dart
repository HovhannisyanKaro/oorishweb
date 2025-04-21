import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/pages/find_privacy/web/find_privacy_web_body.dart';

import '../../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../../views/oorish_page.dart';
import 'mobile/find_privacy_mobile_body.dart';

class FindPrivacyPage extends StatelessWidget {
  const FindPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: FindPrivacyWebBody(),
      mobileBody: FindPrivacyMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
