import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

class DashboardMobileNavigationDrawer extends StatefulWidget {
  final DashboardTabEnum initialSelectedTab;
  final Function(DashboardTabEnum) onTabSelected;
  final GlobalKey<ScaffoldState> drawerKey;

  const DashboardMobileNavigationDrawer({super.key, this.initialSelectedTab = DashboardTabEnum.home, required this.onTabSelected, required this.drawerKey});

  @override
  State<DashboardMobileNavigationDrawer> createState() => _DashboardMobileNavigationDrawerState();
}

class _DashboardMobileNavigationDrawerState extends State<DashboardMobileNavigationDrawer> {
  late DashboardTabEnum _selectedTab;

  @override
  void initState() {
    _selectedTab = widget.initialSelectedTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeExt = context.themeExt;
    const items = DashboardTabEnum.values;
    return Drawer(
      backgroundColor: themeExt.onSurface,
      child: ListView(
        children: [
          const SizedBox(height: 32),
          for (final tab in items) _tile(context, tab),
        ],
      ),
    );
  }

  Widget _tile(BuildContext context, DashboardTabEnum dashboardTab) {
    final themeExt = context.themeExt;

    Color backgroundColor = Colors.transparent;
    Color textColor = themeExt.onSurface.withOpacity(0.5);
    FontWeight? fontWeight = FontWeight.bold;

    if (dashboardTab == _selectedTab) {
      backgroundColor = themeExt.primary.withOpacity(0.1);
      fontWeight = FontWeight.bold;
    }

    if (dashboardTab == DashboardTabEnum.getOorish) {
      backgroundColor = themeExt.primary;
      textColor = themeExt.surface;
    }

    return Center(
      child: InkWell(
        onTap: (){
          setState(() {
            _selectedTab = dashboardTab;
            widget.onTabSelected.call(_selectedTab);
            widget.drawerKey.currentState!.closeEndDrawer();
          });
        },
        child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: Text(dashboardTab.title,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: themeExt.surface,
                      fontWeight: fontWeight,
                    ))),
      ),
    );
  }
}
