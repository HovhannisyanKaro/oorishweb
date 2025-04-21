import 'dart:ui';

import 'package:flutter/material.dart';

class AppThemeConfig {
  final double scaleFactor;
  final bool isTablet;
  final double n2;
  final double n4;
  final double n6;
  final double n8;
  final double n10;
  final double n12;
  final double n16;
  final double n18;
  final double n24;
  final double n30;
  final double n32;
  final double n46;
  final double n55;
  final double n65;
  final double n70;
  final double toolbarHeight;

  static AppThemeConfig? _instance;

  static void initialize() {
    final view = PlatformDispatcher.instance.views.first;
    final logicalSize = view.physicalSize / view.devicePixelRatio;
    final shortestSide = logicalSize.shortestSide;

    double computedScaleFactor;
    if (shortestSide < 600) {
      computedScaleFactor = 1.0;
    } else if (shortestSide >= 600 && shortestSide < 720) {
      computedScaleFactor = 1.2;
    } else {
      computedScaleFactor = 1.5;
    }

    bool tabletFlag = shortestSide >= 600;
    _instance = AppThemeConfig._internal(scaleFactor: computedScaleFactor, isTablet: tabletFlag);
  }

  factory AppThemeConfig({required double scaleFactor, required bool isTablet}) {
    _instance ??= AppThemeConfig._internal(scaleFactor: scaleFactor, isTablet: isTablet);
    return _instance!;
  }

  static AppThemeConfig get instance {
    if (_instance == null) {
      throw Exception('AppThemeConfig is not initialized! Call AppThemeConfig.initialize() first.');
    }
    return _instance!;
  }

  AppThemeConfig._internal({
    required this.scaleFactor,
    required this.isTablet,
  })  : toolbarHeight = kToolbarHeight * scaleFactor,
        n2 = 2 * scaleFactor,
        n4 = 4 * scaleFactor,
        n6 = 6 * scaleFactor,
        n8 = 8 * scaleFactor,
        n10 = 10 * scaleFactor,
        n12 = 12 * scaleFactor,
        n16 = 16 * scaleFactor,
        n18 = 18 * scaleFactor,
        n24 = 24 * scaleFactor,
        n30 = 30 * scaleFactor,
        n32 = 32 * scaleFactor,
        n46 = 46 * scaleFactor,
        n55 = 55 * scaleFactor,
        n65 = 65 * scaleFactor,
        n70 = 70 * scaleFactor;
}
