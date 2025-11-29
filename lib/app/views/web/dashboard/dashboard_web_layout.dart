import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/footer/footer_view.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../header_tabs_web.dart';
import 'dashboard_header_view.dart';

class DashboardWebLayout extends StatefulWidget {
  final DashboardTabEnum selectedTab;
  final Widget Function(BuildContext, BoxConstraints) childBuilder;
  final bool isFooterEnable;

  const DashboardWebLayout({super.key, required this.selectedTab, required this.childBuilder, this.isFooterEnable = true});

  @override
  State<DashboardWebLayout> createState() => _DashboardWebLayoutState();
}

class _DashboardWebLayoutState extends State<DashboardWebLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          Expanded(child: _body()),
        ],
      ),
    );
  }

  Widget _header() {
    return DashboardHeaderView(
        tabBarView: HeaderTabsWeb(
            initialSelectedTab: widget.selectedTab,
            onTabSelected: (dashboardTabItem) {
              if (dashboardTabItem == widget.selectedTab) return;
              switch (dashboardTabItem) {
                case DashboardTabEnum.getOorish:
                  context.navigateToGetOorish();
                  break;
                case DashboardTabEnum.helpCenter:
                  context.navigateToHelpCenter();
                  break;
                case DashboardTabEnum.home:
                  context.navigateToHome();
                  break;
                case DashboardTabEnum.babyPhone:
                  context.navigateToBabyPhone();
                  break;
                case DashboardTabEnum.shoppingList:
                  context.navigateToShoppingList();
              }
            }));
  }

  Widget _body() {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            widget.childBuilder.call(context, constraints),
            // if (widget.isFooterEnable) FooterWeb(dashboardTab: widget.selectedTab),
            if (widget.isFooterEnable) FooterView(platformType: PlatformTypeEnum.web, dashboardTab: widget.selectedTab),
          ],
        ),
      );
    });
  }
}
