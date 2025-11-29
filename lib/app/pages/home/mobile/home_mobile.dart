import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/baby_phone/res/header/baby_phone_header_view.dart';
import 'package:oorishweb/app/views/logo_oorish.dart';
import 'package:oorishweb/app/views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import 'package:oorishweb/app/views/web/baby_phone/baby_phone_header_mobile_item_view.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';
import 'package:oorishweb/res/values/widget_theme.dart';

import '../../../views/mobile/home/home_header_mobile_item_view.dart';

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
            Text('Kids Apps', style: Theme.of(context).textTheme.displaySmall),
            const Divider(height: 64),
            // BabyPhoneHeaderMobileItemView(imageWidth: headerImageSize, theme: WidgetThemeEnum.dark),
            BabyPhoneHeaderView(
              platformType: PlatformTypeEnum.mobile,
              imageSize: headerImageSize,
              theme: WidgetThemeEnum.dark,
              isNavigationEnable: true,
            ),
            const Divider(height: 64),
            Text('For Adults', style: Theme.of(context).textTheme.displaySmall),
            const Divider(height: 64),
            HomeHeaderMobileItemView(imageWidth: headerImageSize),
            const Divider(height: 64),
          ],
        );
      },
    );
  }
}
