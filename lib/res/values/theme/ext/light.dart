import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../colors.dart';
import '../theme_extension.dart';

class LightThemeExtension extends AppThemeExtension {
  LightThemeExtension()
      : super(
          primary: AppColors.cerulean,
          onPrimary: AppColors.white,
          secondary: Colors.yellow,
          onSecondary: AppColors.dark,
          error: AppColors.sunsetOrange,
          onError: Colors.black,
          surface: AppColors.softPeach,
          onSurface: AppColors.dark,
          onSurfaceSecondary: Colors.white,
          displayTextSmallColor: AppColors.dark,
          displayTextMediumColor: AppColors.dark,
          displayTextLargeColor: AppColors.dark,
          titleTextSmallColor: AppColors.dark,
          titleTextMediumColor: AppColors.dark,
          titleTextLargeColor: AppColors.dark,
          bodyTextSmallColor: AppColors.dark,
          bodyTextMediumColor: AppColors.dark,
          bodyTextLargeColor: AppColors.dark,
          headlineTextSmallColor: AppColors.dark,
          headlineTextMediumColor: AppColors.dark,
          headlineTextLargeColor: AppColors.dark,
          labelTextSmallColor: AppColors.dark,
          labelTextMediumColor: AppColors.dark,
          labelTextLargeColor: AppColors.dark,
          warningColor: AppColors.saffronMango,
          infoColor: AppColors.bluishCyan,
          successColor: AppColors.lightMossGreen,
          config: appThemeConfig,
        );
}
