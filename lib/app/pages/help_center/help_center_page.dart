import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/mobile/help_center_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/web/help_center_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../common/views/responsive_view.dart';
import '../home/mobile/home_mobile.dart';
import '../home/web/home_web_body.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

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
      ResponsiveViewTypeEnum.desktop => const HelpCenterWebBody(),
      _ => const HelpCenterMobileBody(),
    };
  }
}
