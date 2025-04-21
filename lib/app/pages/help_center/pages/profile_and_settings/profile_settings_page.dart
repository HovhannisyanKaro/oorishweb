import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/mobile/profile_settings_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/web/profile_settings_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../../../common/views/responsive_view.dart';
import '../../../home/mobile/home_mobile.dart';
import '../../../home/web/home_web_body.dart';

class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({super.key});

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
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
      ResponsiveViewTypeEnum.desktop => const ProfileSettingsWebBody(),
      _ => const ProfileSettingsMobileBody(),
    };
  }
}
