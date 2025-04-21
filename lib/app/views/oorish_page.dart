import 'package:flutter/material.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';
import 'package:oorishweb/main.dart';

import '../../common/views/responsive_view.dart';
import '../enums/dashboard_tab_enum.dart';
import '../pages/home/mobile/home_mobile.dart';
import '../pages/home/web/home_web_body.dart';
import 'mobile/dashboard/dashboard_mobile_navigation_drawer.dart';

class OorishPage extends StatefulWidget {
  final DashboardTabEnum dashboardTabEnum;
  final Widget webBody;
  final Widget mobileBody;

  const OorishPage({super.key, required this.webBody, required this.mobileBody, required this.dashboardTabEnum});

  @override
  State<OorishPage> createState() => _OorishPageState();
}

class _OorishPageState extends State<OorishPage> {
  final drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: _appBar(),
      body: _body(),
      endDrawer: DashboardMobileNavigationDrawer(
        drawerKey: drawerKey,
        initialSelectedTab: widget.dashboardTabEnum,
        onTabSelected: (tab) {
          switch (tab) {
            case DashboardTabEnum.home:
              context.navigateToHome();
              break;
            case DashboardTabEnum.helpCenter:
              context.navigateToHelpCenter();
              break;
            case DashboardTabEnum.getOorish:
              context.navigateToGetOorish();
              break;
          }
        },
      ),
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
      ResponsiveViewTypeEnum.desktop => widget.webBody,
      _ => widget.mobileBody,
    };
  }
}
