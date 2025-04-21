import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../colors.dart';
import '../theme_extension.dart';

class DarkThemeExtension extends AppThemeExtension {
  DarkThemeExtension()
      : super(
    primary: AppColors.butterflyBlue,
    onPrimary: AppColors.softPeach,
    secondary: Colors.yellow,
    onSecondary: Colors.blue,
    error: AppColors.sunsetOrange,
    onError: Colors.black,
    surface: AppColors.darkCyanBlue,
    onSurfaceSecondary: AppColors.gunPowder,
    onSurface: AppColors.softPeach,
    displayTextSmallColor: AppColors.softPeach,
    displayTextMediumColor: AppColors.softPeach,
    displayTextLargeColor: AppColors.softPeach,
    titleTextSmallColor: AppColors.softPeach,
    titleTextMediumColor: AppColors.softPeach,
    titleTextLargeColor: AppColors.softPeach,
    bodyTextSmallColor: AppColors.softPeach,
    bodyTextMediumColor: AppColors.softPeach,
    bodyTextLargeColor: AppColors.softPeach,
    headlineTextSmallColor: AppColors.softPeach,
    headlineTextMediumColor: AppColors.softPeach,
    headlineTextLargeColor: AppColors.softPeach,
    labelTextSmallColor: AppColors.softPeach,
    labelTextMediumColor: AppColors.softPeach,
    labelTextLargeColor: AppColors.softPeach,
    warningColor: AppColors.saffronMango,
    infoColor: AppColors.bluishCyan,
    successColor: AppColors.lightMossGreen,
    config: appThemeConfig,
  );
}
