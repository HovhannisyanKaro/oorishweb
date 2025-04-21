import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/pages/change_appearance/web/change_appearance_web_body.dart';

import '../../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../../views/oorish_page.dart';
import 'mobile/change_appearance_mobile_body.dart';

class ChangeAppearancePage extends StatelessWidget {
  const ChangeAppearancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: ChangeAppearanceWebBody(),
      mobileBody: ChangeAppearanceMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
