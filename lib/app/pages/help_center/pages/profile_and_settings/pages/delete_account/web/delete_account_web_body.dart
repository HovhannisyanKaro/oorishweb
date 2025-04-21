import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/enums/help_center_enums.dart';
import 'package:oorishweb/app/views/web/help_center/help_center_steps_grid_web_view.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../../../views/web/dashboard/dashboard_web_layout.dart';
import '../../../../../enums/profile_settings_menu_enum.dart';


class DeleteAccountWebBody extends StatelessWidget {
  const DeleteAccountWebBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardWebLayout(
        selectedTab: DashboardTabEnum.helpCenter,
        childBuilder: (context, constraints) {
          return Column(
            children: [
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => context.pop(),
                          child: Wrap(
                            children: [
                              Icon(Icons.arrow_back_rounded, color: context.themeExt.onSurface.withOpacity(0.5)),
                              const SizedBox(width: 16),
                              Text('Go back', style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: context.themeExt.onSurface.withOpacity(0.5))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(ProfileSettingsMenuItems.deleteAnAccount.title, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 32),
                    _grid(),
                  ],
                ),
              )
            ],
          );
        });
  }

  Widget _grid() {
    return HelpCenterStepsGridWebView(helpCenterMenu: HelpCenterDeleteAccountEnum.toHelpCenterMenu());
  }
}
