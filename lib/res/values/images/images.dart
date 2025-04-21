import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AppIcons {
  imageShopListCalCount2in1(path: 'assets/icons/shop_list_cal_coun_2_in_1.png'),
  imageAppStore(path: 'assets/icons/image_app_store.png'),
  imageGoogleStore(path: 'assets/icons/image_google_store.png'),
  logoOorish(path: 'assets/icons/logo_oorish.png'),
  imageShareCarts(path: 'assets/icons/image_share_carts.png'),
  imageBuildInChat(path: 'assets/icons/image_build_in_chat.png'),
  imageCalorieCounter(path: 'assets/icons/image_calorie_counter.png'),

  imageHCMyCartsPProfile(path: 'assets/icons/hc/my_carts_p_profile.png'),
  imageHCProfilePAccount(path: 'assets/icons/hc/profile_p_account.png'),
  imageHCAccountPDelete(path: 'assets/icons/hc/account_p_delete.png'),
  imageHCDeletePConfirm(path: 'assets/icons/hc/delete_p_confirm.png'),

  imageHCSettingsPLanguage(path: 'assets/icons/hc/settings_p_language.png'),
  imageHCLanguagePSelect(path: 'assets/icons/hc/language_p_select.png'),
  imageHCProfilePSettings(path: 'assets/icons/hc/profile_p_settings.png'),

  imageHCProfilePAbout(path: 'assets/icons/hc/profile_p_about.png'),
  imageHCAboutPPrivacy(path: 'assets/icons/hc/about_p_privacy.png'),

  imageHCProfilePAppearance(path: 'assets/icons/hc/profile_p_appearance.png'),
  imageHCAppearancePSelect(path: 'assets/icons/hc/appearance_p_select.png'),
  ;

  final String path;

  const AppIcons({required this.path});
}

extension IconsExt on AppIcons {
  SvgPicture svgAsset({double? width, double? height, ColorFilter? colorFilter}) {
    return SvgPicture.asset(path, width: width, height: height, colorFilter: colorFilter);
  }

  Image imageAsset({double? width, double? height}) {
    return Image.asset(path, width: width, height: height);
  }

  AssetImage assetImage() {
    return AssetImage(path);
  }
}
