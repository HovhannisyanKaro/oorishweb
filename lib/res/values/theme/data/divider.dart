import 'package:flutter/material.dart';

import '../theme_extension.dart';

abstract class DividerThemesData {
  static DividerThemeData get(
    AppThemeExtension themeExt,
  ) {
    return DividerThemeData(
      color: themeExt.onSurface.withOpacity(0.1),
      thickness: 0.5,
      indent: 16,
      endIndent: 16,
    );
  }
}
