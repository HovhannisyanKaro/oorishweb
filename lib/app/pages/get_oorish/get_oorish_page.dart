import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/get_oorish/mobile/get_oorish_mobile_body.dart';
import 'package:oorishweb/app/pages/get_oorish/web/get_oorish_web_body.dart';
import 'package:oorishweb/common/extensions/context_ext.dart';

import '../../../common/views/responsive_view.dart';
import '../home/mobile/home_mobile.dart';
import '../home/web/home_web_body.dart';

class GetOorishPage extends StatefulWidget {
  const GetOorishPage({super.key});

  @override
  State<GetOorishPage> createState() => _GetOorishPageState();
}

class _GetOorishPageState extends State<GetOorishPage> {
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
      ResponsiveViewTypeEnum.desktop => const GetOorishWebBody(),
      _ => const GetOorishMobileBody(),
    };
  }
}
