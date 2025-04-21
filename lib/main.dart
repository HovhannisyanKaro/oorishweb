import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/home/home_page.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/get_oorish/get_oorish_page.dart';
import 'package:oorishweb/app/pages/help_center/help_center_page.dart';
import 'package:oorishweb/app/pages/help_center/pages/change_appearance/change_appearance_page.dart';
import 'package:oorishweb/app/pages/help_center/pages/change_language/change_language_page.dart';
import 'package:oorishweb/app/pages/help_center/pages/delete_account/delete_account_page.dart';
import 'package:oorishweb/app/pages/help_center/pages/find_privacy/find_privacy_page.dart';
import 'package:oorishweb/app/pages/help_center/pages/items_and_carts/items_and_carts_page.dart';
import 'package:oorishweb/app/pages/help_center/pages/profile_and_settings/profile_settings_page.dart';
import 'package:oorishweb/app/pages/privacy/privacy_page.dart';
import 'package:oorishweb/res/values/theme/themes.dart';
import 'package:url_strategy/url_strategy.dart';

import 'config/app_theme_config.dart';
import 'dashboard/size_config.dart';

late final AppThemeConfig appThemeConfig;

void main() {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  AppThemeConfig.initialize();

  appThemeConfig = AppThemeConfig.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'oorish',
      theme: AppThemesData().light,
      initialRoute: OorishWebRoutesEnum.home.route,
      routes: {
        for (final routeEnum in OorishWebRoutesEnum.values)
          routeEnum.route: (context) {
            switch (routeEnum) {
              case OorishWebRoutesEnum.home:
                return const HomePage();
              case OorishWebRoutesEnum.privacy:
                return const PrivacyPage();
              case OorishWebRoutesEnum.getOorish:
                return const GetOorishPage();
              case OorishWebRoutesEnum.helpCenter:
                return const HelpCenterPage();
              case OorishWebRoutesEnum.profileSettings:
                return const ProfileSettingsPage();
              case OorishWebRoutesEnum.deleteAccount:
                return const DeleteAccountPage();
              case OorishWebRoutesEnum.changeLanguage:
                return const ChangeLanguagePage();
              case OorishWebRoutesEnum.findPrivacy:
                return const FindPrivacyPage();
              case OorishWebRoutesEnum.changeAppearance:
                return const ChangeAppearancePage();
              case OorishWebRoutesEnum.itemsAndCarts:
                return const ItemsAndCartsPage();
            }
          },
      },
    );
  }
}

enum OorishWebRoutesEnum {
  home(route: '/'),
  privacy(route: '/privacy-policy'),
  getOorish(route: '/get-oorish'),
  helpCenter(route: '/help-center'),
  profileSettings(route: '/profile-settings'),
  deleteAccount(route: '/delete-account'),
  changeLanguage(route: '/change-language'),
  findPrivacy(route: '/find-privacy'),
  changeAppearance(route: '/change-appearance'),
  itemsAndCarts(route: '/items-carts'),
  ;

  final String route;

  const OorishWebRoutesEnum({required this.route});
}

extension NavigationExtension on BuildContext {
  void navigateToPrivacy({DashboardTabEnum dashboardTab = DashboardTabEnum.home}) => Navigator.of(this).pushNamed(OorishWebRoutesEnum.privacy.route, arguments: dashboardTab);

  void navigateToHome() => Navigator.of(this).pushReplacementNamed(OorishWebRoutesEnum.home.route);

  void navigateToGetOorish() => Navigator.of(this).pushReplacementNamed(OorishWebRoutesEnum.getOorish.route);

  void navigateToHelpCenter() => Navigator.of(this).pushReplacementNamed(OorishWebRoutesEnum.helpCenter.route);

  void navigateToProfileSettings() => Navigator.of(this).pushNamed(OorishWebRoutesEnum.profileSettings.route);

  void navigateToDeleteAccount() => Navigator.of(this).pushNamed(OorishWebRoutesEnum.deleteAccount.route);

  void navigateToChangeLanguage() => Navigator.of(this).pushNamed(OorishWebRoutesEnum.changeLanguage.route);

  void navigateToFindPrivacy() => Navigator.of(this).pushNamed(OorishWebRoutesEnum.findPrivacy.route);

  void navigateToChangeAppearance() => Navigator.of(this).pushNamed(OorishWebRoutesEnum.changeAppearance.route);

  void navigateToItemsAndCarts() => Navigator.of(this).pushNamed(OorishWebRoutesEnum.itemsAndCarts.route);


  void pop() => Navigator.of(this).pop();
}
