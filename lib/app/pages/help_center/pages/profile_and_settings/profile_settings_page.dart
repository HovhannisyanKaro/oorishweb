import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/mobile/profile_settings_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/web/profile_settings_web_body.dart';

import '../../../../enums/dashboard_tab_enum.dart';
import '../../../../views/oorish_page.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: ProfileSettingsWebBody(),
      mobileBody: ProfileSettingsMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
