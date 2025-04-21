import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/home/mobile/home_mobile.dart';
import 'package:oorishweb/app/pages/home/web/home_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';
import 'package:oorishweb/common/views/responsive_view.dart';

import '../../enums/dashboard_tab_enum.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      ResponsiveViewTypeEnum.desktop => const HomeWebBody(),
      _ => const HomeMobileBody(),
    };
  }
}
