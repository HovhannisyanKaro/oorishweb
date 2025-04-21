import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/get_oorish/mobile/get_oorish_mobile_body.dart';
import 'package:oorishweb/app/pages/get_oorish/web/get_oorish_web_body.dart';
import 'package:oorishweb/app/views/oorish_page.dart';

class GetOorishPage extends StatelessWidget {
  const GetOorishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: GetOorishWebBody(),
      mobileBody: GetOorishMobileBody(),
      dashboardTabEnum: DashboardTabEnum.getOorish,
    );
  }
}
