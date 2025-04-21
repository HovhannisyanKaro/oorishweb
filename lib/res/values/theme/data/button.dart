import 'package:flutter/material.dart';

import '../theme_extension.dart';

abstract class ButtonThemesData {
  static elevated(AppThemeExtension themeExt) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: themeExt.buttonMinSize * themeExt.config.scaleFactor,
        backgroundColor: themeExt.primary,
        foregroundColor: themeExt.onPrimary,
        shape: themeExt.roundedRectangleShape,
        alignment: Alignment.center,
      ),
    );
  }

  static outlined(AppThemeExtension themeExt) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: themeExt.buttonMinSize * themeExt.config.scaleFactor,
        foregroundColor: themeExt.primary,
        side: BorderSide(color: themeExt.primary, width: themeExt.outlinedButtonBorderWidth),
        shape: themeExt.roundedRectangleShape,
        alignment: Alignment.center,
      ),
    );
  }
}
