import 'package:flutter/material.dart';
import 'package:oorishweb/common/views/constraint_layout.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/images/images.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';
import 'package:oorishweb/res/values/widget_theme.dart';

import '../../../../../common/utils/string_utils.dart';
import '../../../../../res/values/oorish_app_product.dart';

part '_launcher_icon.dart';
part '_store_buttons.dart';
part '_title_block.dart';

class BabyPhoneHeaderView extends StatelessWidget {
  final PlatformTypeEnum platformType;
  final bool isNavigationEnable;
  final WidgetThemeEnum theme;
  final double imageSize;

  const BabyPhoneHeaderView({
    super.key,
    required this.platformType,
    this.isNavigationEnable = false,
    this.theme = WidgetThemeEnum.light,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = theme == WidgetThemeEnum.light ? Colors.white : null;
    return switch (platformType) {
      PlatformTypeEnum.web => _buildWeb(context, textColor: textColor),
      PlatformTypeEnum.mobile => _buildMobile(context, textColor: textColor),
    };
  }

  Widget _buildWeb(BuildContext context, {Color? textColor}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [_TitleBlock(isNavigationEnable: isNavigationEnable, textColor: textColor), const _StoreButtons(isLauncherIconEnable: true, appProduct: OorishAppProduct.babyPhone)],
        ),
        AppIcons.babyPhoneLaunchHome.imageAsset(width: imageSize, height: imageSize),
      ],
    );
  }

  Widget _buildMobile(BuildContext context, {Color? textColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _TitleBlock(isNavigationEnable: isNavigationEnable, textColor: textColor),
        AppIcons.babyPhoneLaunchHome.imageAsset(width: imageSize, height: imageSize),
        const SizedBox(height: 32),
        const _LauncherIcon(),
        const SizedBox(height: 32),
        const _StoreButtons(appProduct: OorishAppProduct.babyPhone)
      ],
    );
  }
}
