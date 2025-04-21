import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/change_language/mobile/change_language_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/change_language/web/change_language_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../../../common/views/responsive_view.dart';
import '../../../home/mobile/home_mobile.dart';
import '../../../home/web/home_web_body.dart';

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({super.key});

  @override
  State<ChangeLanguagePage> createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> with SingleTickerProviderStateMixin {
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
      ResponsiveViewTypeEnum.desktop => const ChangeLanguageWebBody(),
      _ => const ChangeLanguageMobileBody(),
    };
  }
}
