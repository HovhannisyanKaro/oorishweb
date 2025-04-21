import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/pages/change_language/web/change_language_web_body.dart';

import '../../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../../views/oorish_page.dart';
import 'mobile/change_language_mobile_body.dart';

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: ChangeLanguageWebBody(),
      mobileBody: ChangeLanguageMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
