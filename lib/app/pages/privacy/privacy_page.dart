import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/privacy/mobile/privacy_mobile_body.dart';
import 'package:oorishweb/app/pages/privacy/web/privacy_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../common/views/responsive_view.dart';
import '../home/mobile/home_mobile.dart';
import '../home/web/home_web_body.dart';
import '../../enums/dashboard_tab_enum.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  DashboardTabEnum dashboardTabArgs() {
    final args = ModalRoute.of(context)?.settings.arguments;
    return args is DashboardTabEnum ? args : DashboardTabEnum.home;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: _appBar(),
      body: _body(),
    );
  }

  PreferredSizeWidget _appBar() {
    return switch (context.responsiveViewType()) {
      ResponsiveViewTypeEnum.desktop => dashboardWebAppbar(),
      _ => dashboardMobileAppBar(context, drawerKey),
    };
  }

  Widget _body() {
    return switch (context.responsiveViewType()) {
      ResponsiveViewTypeEnum.desktop => PrivacyWebBody(dashboardTab: dashboardTabArgs()),
      _ => const PrivacyMobileBody(),
    };
  }
}
