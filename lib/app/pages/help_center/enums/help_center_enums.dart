import 'package:oorishweb/res/values/images/images.dart';

class HelpCenterMenu {
  final String title;
  final List<HelpCenterMenuItem> items;

  HelpCenterMenu(this.title, this.items);
}

class HelpCenterMenuItem {
  final String title;
  final AppIcons image;
  final int index;

  HelpCenterMenuItem(this.index, this.title, this.image);
}

enum HelpCenterDeleteAccountEnum {
  step1(title: 'Profile', image: AppIcons.imageHCMyCartsPProfile),
  step2(title: 'Edit Account', image: AppIcons.imageHCProfilePAccount),
  step3(title: 'Delete Account', image: AppIcons.imageHCAccountPDelete),
  step4(title: 'Confirm Deletion', image: AppIcons.imageHCDeletePConfirm),
  ;

  final String title;
  final AppIcons image;

  const HelpCenterDeleteAccountEnum({required this.title, required this.image});

  static HelpCenterMenu toHelpCenterMenu() {
    const title = 'How to delete an account?';
    final items = HelpCenterDeleteAccountEnum.values.map((enumItem) => HelpCenterMenuItem(enumItem.index, enumItem.title, enumItem.image)).toList();
    return HelpCenterMenu(title, items);
  }
}

enum HelpCenterChangeAppLanguage {
  step1(title: 'Profile', image: AppIcons.imageHCMyCartsPProfile),
  step2(title: 'Settings', image: AppIcons.imageHCProfilePSettings),
  step3(title: 'Language', image: AppIcons.imageHCSettingsPLanguage),
  step4(title: 'Select a language', image: AppIcons.imageHCLanguagePSelect),
  ;

  final String title;
  final AppIcons image;

  const HelpCenterChangeAppLanguage({required this.title, required this.image});

  static HelpCenterMenu toHelpCenterMenu() {
    const title = 'How do I change the language in oorish ?';
    final items = HelpCenterChangeAppLanguage.values.map((enumItem) => HelpCenterMenuItem(enumItem.index, enumItem.title, enumItem.image)).toList();
    return HelpCenterMenu(title, items);
  }
}

enum HelpCenterWhereToFindPrivacy {
  step1(title: 'Profile', image: AppIcons.imageHCMyCartsPProfile),
  step2(title: 'About', image: AppIcons.imageHCProfilePAbout),
  step3(title: 'Terms and Privacy', image: AppIcons.imageHCAboutPPrivacy),
  ;

  final String title;
  final AppIcons image;

  const HelpCenterWhereToFindPrivacy({required this.title, required this.image});

  static HelpCenterMenu toHelpCenterMenu() {
    const title = 'Where can I find your Terms of Use and Privacy Policy?';
    final items = HelpCenterWhereToFindPrivacy.values.map((enumItem) => HelpCenterMenuItem(enumItem.index, enumItem.title, enumItem.image)).toList();
    return HelpCenterMenu(title, items);
  }
}

enum HelpCenterChangeAppearance {
  step1(title: 'Profile', image: AppIcons.imageHCMyCartsPProfile),
  step2(title: 'Appearance', image: AppIcons.imageHCProfilePAppearance),
  step3(title: 'Select an appearance', image: AppIcons.imageHCAppearancePSelect),
  ;

  final String title;
  final AppIcons image;

  const HelpCenterChangeAppearance({required this.title, required this.image});

  static HelpCenterMenu toHelpCenterMenu() {
    const title = 'How to change the appearance of my app?';
    final items = HelpCenterChangeAppearance.values.map((enumItem) => HelpCenterMenuItem(enumItem.index, enumItem.title, enumItem.image)).toList();
    return HelpCenterMenu(title, items);
  }
}
