import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/pages/items_and_carts/mobile/items_and_carts_mobile_body.dart';
import 'package:oorishweb/app/pages/help_center/pages/items_and_carts/web/items_and_carts_web_body.dart';

import '../../../../enums/dashboard_tab_enum.dart';
import '../../../../views/oorish_page.dart';

class ItemsAndCartsPage extends StatelessWidget {
  const ItemsAndCartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: ItemsAndCartsWebBody(),
      mobileBody: ItemsAndCartsMobileBody(),
      dashboardTabEnum: DashboardTabEnum.helpCenter,
    );
  }
}
