import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/mobile/footer_mobile.dart';

import '../../../enums/dashboard_tab_enum.dart';

class DashboardMobileBodyLayout extends StatefulWidget {
  final DashboardTabEnum selectedTab;
  final Widget Function(BuildContext, BoxConstraints) childBuilder;

  const DashboardMobileBodyLayout({super.key, required this.selectedTab, required this.childBuilder});

  @override
  State<DashboardMobileBodyLayout> createState() => _DashboardMobileBodyLayoutState();
}

class _DashboardMobileBodyLayoutState extends State<DashboardMobileBodyLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widget.childBuilder.call(context, constraints),
              FooterMobile(dashboardTab: widget.selectedTab),
            ],
          ),
        ),
      );
    });
  }
}
