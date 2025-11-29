import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/baby_phone/res/header/baby_phone_header_view.dart';
import 'package:oorishweb/app/views/web/baby_phone/baby_phone_header_web_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_build_in_chat_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_calorie_counter_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_header_web_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_share_carts_web_item_view.dart';
import 'package:oorishweb/app/views/web/dashboard/dashboard_web_layout.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';
import 'package:oorishweb/res/values/widget_theme.dart';

import '../../../enums/dashboard_tab_enum.dart';

class GetOorishWebBody extends StatelessWidget {
  const GetOorishWebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardWebLayout(
        selectedTab: DashboardTabEnum.getOorish,
        childBuilder: (context, constraints) {
          final width = constraints.maxWidth / 1.5;
          final headerImageSize = width / 2;
          final defaultImageSize = width / 2.5;
          return Column(
            children: [
              SizedBox(height: 32),
              Text('Kids Apps', style: Theme.of(context).textTheme.displaySmall),
              const Divider(height: 100),
              // BabyPhoneHeaderWebItemView(imageWidth: headerImageSize, theme: WidgetThemeEnum.dark),
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

              // const SizedBox(height: 32),
              // HomeHeaderWebItemView(imageWidth: headerImageSize),
              // const Divider(height: 100),
              // HomeShareCartsWebItemView(imageWidth: defaultImageSize),
              // const Divider(height: 100),
              // HomeBuildInChatItemView(imageWidth: defaultImageSize),
              // const Divider(height: 100),
              // HomeCalorieCounterItemView(imageWidth: defaultImageSize),
            ],
          );
        });
  }
}
