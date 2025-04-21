import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/web/home/home_build_in_chat_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_calorie_counter_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_header_web_item_view.dart';
import 'package:oorishweb/app/views/web/home/home_share_carts_web_item_view.dart';
import 'package:oorishweb/app/views/web/dashboard/dashboard_web_layout.dart';

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
              const SizedBox(height: 32),
              HomeHeaderWebItemView(imageWidth: headerImageSize),
              const Divider(height: 100),
              HomeShareCartsWebItemView(imageWidth: defaultImageSize),
              const Divider(height: 100),
              HomeBuildInChatItemView(imageWidth: defaultImageSize),
              const Divider(height: 100),
              HomeCalorieCounterItemView(imageWidth: defaultImageSize),
            ],
          );
        });
  }
}
