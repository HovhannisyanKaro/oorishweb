import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/footer/footer_view.dart';

import '../../../../res/values/platform_type_enum.dart' show PlatformTypeEnum;
import '../../../enums/dashboard_tab_enum.dart';

class DashboardMobileBodyLayout extends StatelessWidget {
  final DashboardTabEnum selectedTab;
  final Widget Function(BuildContext, BoxConstraints) childBuilder;
  final bool isFooterEnable;

  const DashboardMobileBodyLayout({super.key, required this.selectedTab, required this.childBuilder, this.isFooterEnable = true});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              childBuilder.call(context, constraints),
              // if (widget.isFooterEnable) FooterMobile(dashboardTab: widget.selectedTab),
              if (isFooterEnable) FooterView(platformType: PlatformTypeEnum.mobile, dashboardTab: selectedTab),
            ],
          ),
        ),
      );
    });
  }
}
