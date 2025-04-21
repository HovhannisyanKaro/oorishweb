import 'package:flutter/material.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import '../../../enums/items_and_carts_menu_enum.dart';

class ItemsAndCartsMobileBody extends StatefulWidget {
  const ItemsAndCartsMobileBody({super.key});

  @override
  State<ItemsAndCartsMobileBody> createState() => _ItemsAndCartsMobileBodyState();
}

class _ItemsAndCartsMobileBodyState extends State<ItemsAndCartsMobileBody> {
  @override
  Widget build(BuildContext context) {
    return DashboardMobileBodyLayout(
      selectedTab: DashboardTabEnum.helpCenter,
      childBuilder: (context, constraints) {
        final width = constraints.maxWidth;
        final headerImageSize = width / 1.2;
        return Column(
          children: [
            const SizedBox(height: 32),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => context.pop(),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_rounded, color: context.themeExt.onSurface.withOpacity(0.5)),
                          const SizedBox(width: 16),
                          Text('Go back', style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold, color: context.themeExt.onSurface.withOpacity(0.5))),
                        ],
                      ),
                    ),
                  ],
                ),
                Text('Items and Carts', style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                for (final menuItem in ItemsAndCartsMenuItems.values) _item(menuItem),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _item(ItemsAndCartsMenuItems menuItem) {
    final themeExt = context.themeExt;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      backgroundColor: themeExt.onSurface.withOpacity(0.1),
                      collapsedBackgroundColor: themeExt.onSurface.withOpacity(0.1),
                      childrenPadding: const EdgeInsets.all(16),
                      title: Text(menuItem.title, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold)),
                      children: [
                        Text(menuItem.description, textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: themeExt.onSurface.withOpacity(0.5))),
                      ],
                    ),
                  ),
                )),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
