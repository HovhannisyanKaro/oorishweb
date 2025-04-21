import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/home/mobile/home_mobile.dart';
import 'package:oorishweb/app/pages/home/web/home_web_body.dart';
import 'package:oorishweb/app/views/oorish_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: HomeWebBody(),
      mobileBody: HomeMobileBody(),
      dashboardTabEnum: DashboardTabEnum.home,
    );
  }
}
