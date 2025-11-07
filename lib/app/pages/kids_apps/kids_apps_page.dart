import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/kids_apps/web/kids_app_web_body.dart';

import '../../enums/dashboard_tab_enum.dart';
import '../../views/oorish_page.dart';

class KidsAppsPage extends StatefulWidget {
  const KidsAppsPage({super.key});

  @override
  State<KidsAppsPage> createState() => _KidsAppsPageState();
}

class _KidsAppsPageState extends State<KidsAppsPage> {
  @override
  Widget build(BuildContext context) {
    return OorishPage(
      webBody: KidsAppWebBody(),
      mobileBody: Container(),
      dashboardTabEnum: DashboardTabEnum.home,
    );
  }
}
