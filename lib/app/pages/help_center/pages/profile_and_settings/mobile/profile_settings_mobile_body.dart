import 'package:flutter/material.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../../../enums/dashboard_tab_enum.dart';
import '../../../../../views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import '../../../enums/profile_settings_menu_enum.dart';

class ProfileSettingsMobileBody extends StatelessWidget {
  const ProfileSettingsMobileBody({super.key});

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
                Text('Profile & Settings', style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 32),
                for (final menuItem in ProfileSettingsMenuItems.values)
                  _item(context, menuItem, (menuItem) {
                    switch (menuItem) {
                      case ProfileSettingsMenuItems.changeAppearance:
                        context.navigateToChangeAppearance();
                        break;
                      case ProfileSettingsMenuItems.deleteAnAccount:
                        context.navigateToDeleteAccount();
                        break;
                      case ProfileSettingsMenuItems.changeLanguage:
                        context.navigateToChangeLanguage();
                        break;
                      case ProfileSettingsMenuItems.whereToFindPrivacyAndTerms:
                        context.navigateToFindPrivacy();
                        break;
                    }
                  }),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _item(BuildContext context, ProfileSettingsMenuItems menuItem, Function(ProfileSettingsMenuItems) onClick) {
    final themeExt = context.themeExt;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 9,
                child: InkWell(
                  onTap: () => onClick(menuItem),
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: themeExt.onSurface.withOpacity(0.1)),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        menuItem.title,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )),
            const SizedBox(width: 16),
            Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => onClick(menuItem),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: themeExt.onSurface.withOpacity(0.1)),
                    child: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                )),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
