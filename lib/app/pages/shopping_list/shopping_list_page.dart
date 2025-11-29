import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/home/mobile/home_mobile.dart';
import 'package:oorishweb/app/pages/home/web/home_web_body.dart';
import 'package:oorishweb/app/pages/shopping_list/mobile/shopping_list_mobile.dart';
import 'package:oorishweb/app/pages/shopping_list/web/shopping_list_web_body.dart';
import 'package:oorishweb/app/views/oorish_page.dart';

class ShoppingListPage extends StatelessWidget {
  const ShoppingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OorishPage(
      webBody: ShoppingListWebBody(),
      mobileBody: ShoppingListMobile(),
      dashboardTabEnum: DashboardTabEnum.shoppingList,
    );
  }
}
