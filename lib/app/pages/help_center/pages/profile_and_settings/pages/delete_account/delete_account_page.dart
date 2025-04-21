import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/pages/delete_account/web/delete_account_web_body.dart';

import '../../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../../views/oorish_page.dart';
import 'mobile/delete_account_mobile_body.dart';

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: DeleteAccountWebBody(),
      mobileBody: DeleteAccountMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
