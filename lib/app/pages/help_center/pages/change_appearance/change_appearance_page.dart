import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/change_appearance/mobile/change_appearance_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/change_appearance/web/change_appearance_web_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/find_privacy/mobile/find_privacy_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/find_privacy/web/find_privacy_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../../../common/views/responsive_view.dart';
import '../../../home/mobile/home_mobile.dart';
import '../../../home/web/home_web_body.dart';

class ChangeAppearancePage extends StatefulWidget {
  const ChangeAppearancePage({super.key});

  @override
  State<ChangeAppearancePage> createState() => _ChangeAppearancePageState();
}

class _ChangeAppearancePageState extends State<ChangeAppearancePage> with SingleTickerProviderStateMixin {
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
      ResponsiveViewTypeEnum.desktop => const ChangeAppearanceWebBody(),
      _ => const ChangeAppearanceMobileBody(),
    };
  }
}
