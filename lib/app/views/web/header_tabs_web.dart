import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../enums/dashboard_tab_enum.dart';

class HeaderTabsWeb extends StatefulWidget {
  final DashboardTabEnum initialSelectedTab;
  final Function(DashboardTabEnum) onTabSelected;

  const HeaderTabsWeb({super.key, this.initialSelectedTab = DashboardTabEnum.home, required this.onTabSelected});

  @override
  State<HeaderTabsWeb> createState() => _HeaderTabsWebState();
}

class _HeaderTabsWebState extends State<HeaderTabsWeb> {
  late DashboardTabEnum _selectedTab;

  final _tabItems = DashboardTabEnum.values;

  @override
  void initState() {
    _selectedTab = widget.initialSelectedTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (final tab in _tabItems) _tabButton(tab),
      ],
    );
  }

  Widget _tabButton(DashboardTabEnum dashboardTab) {
    final themeExt = context.themeExt;
    Color backgroundColor = Colors.transparent;
    Color textColor = themeExt.onSurface.withOpacity(0.5);
    FontWeight? fontWeight;
    if (dashboardTab == _selectedTab) {
      backgroundColor = themeExt.primary.withOpacity(0.1);
      fontWeight = FontWeight.bold;
    }

    if (dashboardTab == DashboardTabEnum.getOorish) {
      backgroundColor = themeExt.primary;
      fontWeight = FontWeight.bold;
      textColor = themeExt.surface;
    }

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        setState(() {
          _selectedTab = dashboardTab;
          widget.onTabSelected.call(_selectedTab);
        });
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
          decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(8)),
          child: Text(
            dashboardTab.title,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: textColor,
                  fontWeight: fontWeight,
                ),
          )),
    );
  }
}
