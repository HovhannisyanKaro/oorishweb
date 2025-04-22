import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/views/logo_oorish.dart';
import 'package:oorishweb/app/views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../views/mobile/home/home_build_in_chat_mobile_item_view.dart';
import '../../../views/mobile/home/home_calorie_counter_mobile_item_view.dart';
import '../../../views/mobile/home/home_header_mobile_item_view.dart';
import '../../../views/mobile/home/home_share_carts_mobile_item_view.dart';

PreferredSizeWidget dashboardMobileAppBar(BuildContext context, GlobalKey<ScaffoldState> drawerKey) {
  return AppBar(
    elevation: 0,
    leadingWidth: 150,
    leading: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: LogoOorishView(),
    ),
    actions: [
      IconButton(
        onPressed: () => drawerKey.currentState!.openEndDrawer(),
        icon: Icon(Icons.menu, color: context.themeExt.onSurface),
      ),
    ],
  );
}

class HomeMobileBody extends StatelessWidget {
  const HomeMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardMobileBodyLayout(
      selectedTab: DashboardTabEnum.home,
      childBuilder: (context, constraints) {
        final width = constraints.maxWidth;
        final headerImageSize = width / 1.2;
        return Column(
          children: [
            HomeHeaderMobileItemView(imageWidth: headerImageSize),
            const Divider(height: 64),
            HomeShareCartsMobileItemView(imageWidth: headerImageSize),
            const Divider(height: 64),
            HomeBuildInChatMobileItemView(imageWidth: headerImageSize),
            const Divider(height: 64),
            HomeCalorieCounterMobileItemView(imageWidth: headerImageSize),
          ],
        );
      },
    );
  }
}
