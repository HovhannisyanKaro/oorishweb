import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_extension.dart';

import 'ext/light.dart';

extension ThemeExt on BuildContext {
  AppThemeExtension get themeExt => Theme.of(this).extension<AppThemeExtension>() ?? LightThemeExtension();
}