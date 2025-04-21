import 'package:flutter/material.dart';

import '../../../config/app_theme_config.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  static const _buttonCornerRadiusValue = 8.0;
  static const _outlinedButtonBorderWidthValue = 1.0;
  static const _textFormFieldBorderRadiusValue = 8.0;
  static const _textFormFieldBorderSideValue = 1.0;
  static const _textFormFieldFocusedBorderSideValue = 2.0;
  static const _buttonMinSizeHeightValue = 40.0;
  static const _textFormFieldFocusedBorderSideWidthValue = 2.0;

  static double get buttonMinSizeHeightValue => _buttonMinSizeHeightValue;

  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color error;
  final Color onError;
  final Color surface;
  final Color onSurface;
  final Color onSurfaceSecondary;

  final Color warningColor;
  final Color infoColor;
  final Color successColor;

  final double buttonBorderRadius;
  final double outlinedButtonBorderWidth;
  final double buttonMinSizeHeight;

  final double textFormFieldBorderRadius;
  final double textFormFieldBorderSide;
  final double textFormFieldFocusedBorderSideValue;
  final double textFormFieldFocusedBorderSideWidth;

  final Color displayTextSmallColor;
  final Color displayTextMediumColor;
  final Color displayTextLargeColor;

  final Color titleTextSmallColor;
  final Color titleTextMediumColor;
  final Color titleTextLargeColor;

  final Color bodyTextSmallColor;
  final Color bodyTextMediumColor;
  final Color bodyTextLargeColor;

  final Color headlineTextSmallColor;
  final Color headlineTextMediumColor;
  final Color headlineTextLargeColor;

  final Color labelTextSmallColor;
  final Color labelTextMediumColor;
  final Color labelTextLargeColor;

  final AppThemeConfig config;

  AppThemeExtension({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.onSurface,
    required this.onSurfaceSecondary,
    this.buttonBorderRadius = _buttonCornerRadiusValue,
    this.outlinedButtonBorderWidth = _outlinedButtonBorderWidthValue,
    this.textFormFieldBorderRadius = _textFormFieldBorderRadiusValue,
    this.textFormFieldBorderSide = _textFormFieldBorderSideValue,
    this.textFormFieldFocusedBorderSideValue = _textFormFieldFocusedBorderSideValue,
    this.buttonMinSizeHeight = _buttonMinSizeHeightValue,
    this.textFormFieldFocusedBorderSideWidth = _textFormFieldFocusedBorderSideWidthValue,
    required this.displayTextSmallColor,
    required this.displayTextMediumColor,
    required this.displayTextLargeColor,
    required this.titleTextSmallColor,
    required this.titleTextMediumColor,
    required this.titleTextLargeColor,
    required this.bodyTextSmallColor,
    required this.bodyTextMediumColor,
    required this.bodyTextLargeColor,
    required this.headlineTextSmallColor,
    required this.headlineTextMediumColor,
    required this.headlineTextLargeColor,
    required this.labelTextSmallColor,
    required this.labelTextMediumColor,
    required this.labelTextLargeColor,
    required this.warningColor,
    required this.infoColor,
    required this.successColor,
    required this.config,
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith() => this;

  @override
  ThemeExtension<AppThemeExtension> lerp(covariant ThemeExtension<AppThemeExtension>? other, double t) => this;

  Size get buttonMinSize => Size(double.infinity, buttonMinSizeHeight);

  RoundedRectangleBorder get roundedRectangleShape => RoundedRectangleBorder(borderRadius: BorderRadius.circular(buttonBorderRadius));
}

class AppThemeExtensionV2 extends ThemeExtension<AppThemeExtensionV2> {
  @override
  ThemeExtension<AppThemeExtensionV2> copyWith() => this;

  @override
  ThemeExtension<AppThemeExtensionV2> lerp(covariant ThemeExtension<AppThemeExtensionV2>? other, double t) => this;
}
