import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/delete_account/mobile/delete_account_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/delete_account/web/delete_account_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../../../common/views/responsive_view.dart';
import '../../../home/mobile/home_mobile.dart';
import '../../../home/web/home_web_body.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> with SingleTickerProviderStateMixin {
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
      ResponsiveViewTypeEnum.desktop => const DeleteAccountWebBody(),
      _ => const DeleteAccountMobileBody(),
    };
  }
}
