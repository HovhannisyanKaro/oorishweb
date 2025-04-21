import 'package:flutter/material.dart';

import '../theme_extension.dart';

abstract class NavigationBarThemesData {
  static get(AppThemeExtension themeExt) {
    return NavigationBarThemeData(
      backgroundColor: themeExt.surface,
      indicatorColor: themeExt.primary,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? TextStyle(color: themeExt.primary, overflow: TextOverflow.ellipsis, fontSize: 14, fontWeight: FontWeight.w500)
            : TextStyle(color: themeExt.onSurface, overflow: TextOverflow.ellipsis, fontSize: 12, fontWeight: FontWeight.w400);
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected) ? IconThemeData(color: themeExt.onSurface) : IconThemeData(color: themeExt.onSurface);
      }),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      surfaceTintColor: Colors.transparent,
    );
  }
}
