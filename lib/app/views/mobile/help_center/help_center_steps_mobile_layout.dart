import 'package:flutter/material.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../pages/help_center/enums/help_center_enums.dart';
import '../dashboard/dashboard_mobile_body_layout.dart';
import 'help_center_steps_grid_mobile_view.dart';

class HelpCenterStepsMobileLayout extends StatelessWidget {
  final HelpCenterMenu helpCenterMenu;

  const HelpCenterStepsMobileLayout({super.key, required this.helpCenterMenu});

  @override
  Widget build(BuildContext context) {
    return DashboardMobileBodyLayout(
      selectedTab: DashboardTabEnum.helpCenter,
      childBuilder: (context, constraints) {
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
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_rounded, color: context.themeExt.onSurface.withOpacity(0.5)),
                          const SizedBox(width: 16),
                          Text('Go back', style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: context.themeExt.onSurface.withOpacity(0.5))),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(helpCenterMenu.title, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 32),
                _grid(),
              ],
            )
          ],
        );
      },
    );
  }

  Widget _grid() {
    return HelpCenterStepsGridMobileView(helpCenterMenu: helpCenterMenu);
  }
}
