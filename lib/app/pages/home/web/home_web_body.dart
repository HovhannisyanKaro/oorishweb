import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/baby_phone/res/header/baby_phone_header_view.dart';
import 'package:oorishweb/app/views/web/dashboard/dashboard_web_layout.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';
import 'package:oorishweb/res/values/widget_theme.dart';

import '../../../views/web/home/home_header_web_item_view.dart';

PreferredSize dashboardWebAppbar() => const PreferredSize(preferredSize: Size.zero, child: SizedBox());

class HomeWebBody extends StatefulWidget {
  const HomeWebBody({super.key});

  @override
  State<HomeWebBody> createState() => _HomeWebBodyState();
}

class _HomeWebBodyState extends State<HomeWebBody> {
  @override
  Widget build(BuildContext context) {
    return DashboardWebLayout(
        selectedTab: DashboardTabEnum.home,
        childBuilder: (context, constraints) {
          final width = constraints.maxWidth / 1.5;
          final headerImageSize = width / 2;
          return Column(
            children: [
              const SizedBox(height: 32),
              Text('Kids Apps', style: Theme.of(context).textTheme.displaySmall),
              const Divider(height: 100),
              BabyPhoneHeaderView(
                platformType: PlatformTypeEnum.web,
                imageSize: headerImageSize,
                isNavigationEnable: true,
                theme: WidgetThemeEnum.dark,
              ),
              const Divider(height: 100),
              Text('For Adults', style: Theme.of(context).textTheme.displaySmall),
              const Divider(height: 100),
              HomeHeaderWebItemView(imageWidth: headerImageSize, alignment: HomeHeaderAlignmentEnum.imageLeft),
              const Divider(height: 100),
            ],
          );
        });
  }
}
