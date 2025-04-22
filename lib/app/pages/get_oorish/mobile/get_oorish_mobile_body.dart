import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/mobile/home/home_calorie_counter_mobile_item_view.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import '../../../views/mobile/home/home_build_in_chat_mobile_item_view.dart';
import '../../../views/mobile/home/home_header_mobile_item_view.dart';
import '../../../views/mobile/home/home_share_carts_mobile_item_view.dart';

class GetOorishMobileBody extends StatefulWidget {
  const GetOorishMobileBody({super.key});

  @override
  State<GetOorishMobileBody> createState() => _GetOorishMobileBodyState();
}

class _GetOorishMobileBodyState extends State<GetOorishMobileBody> {
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
