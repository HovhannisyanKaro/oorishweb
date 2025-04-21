import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_extension.dart';

import '../../../common/utils/navigation/no_transitions_builder.dart';
import '../fonts/fonts.dart';
import 'data/app_bar.dart';
import 'data/button.dart';
import 'data/color_scheme.dart';
import 'data/dialog.dart';
import 'data/divider.dart';
import 'data/floating_action_button.dart';
import 'data/input.dart';
import 'data/navigation_bar.dart';
import 'data/progress_indicator.dart';
import 'data/tab_bar.dart';
import 'data/text.dart';
import 'ext/classic.dart';
import 'ext/dark.dart';
import 'ext/dark_pink.dart';
import 'ext/light.dart';

class AppThemesData {
  ThemeData get light => _def(themeExt: LightThemeExtension(), brightness: Brightness.light);

  ThemeData get classic => _def(themeExt: ClassicThemeExtension(), brightness: Brightness.light);

  ThemeData get dark => _def(themeExt: DarkThemeExtension(), brightness: Brightness.dark);

  ThemeData get darkPink => _def(themeExt: DarkPinkThemeExtension(), brightness: Brightness.dark);

  ThemeData _def({required AppThemeExtension themeExt, required Brightness brightness}) {
    return ThemeData(
      fontFamily: FontEnum.nunito.family,
      extensions: [themeExt],
      colorScheme: ColorSchemeThemeData.get(themeExt, brightness: brightness),
      elevatedButtonTheme: ButtonThemesData.elevated(themeExt),
      outlinedButtonTheme: ButtonThemesData.outlined(themeExt),
      textTheme: TextThemesData.get(themeExt),
      inputDecorationTheme: InputThemesData.outline(themeExt),
      appBarTheme: AppBarThemesData.get(themeExt),
      dialogTheme: DialogThemesData.get(themeExt),
      floatingActionButtonTheme: FloatingActionButtonThemesData.get(themeExt),
      progressIndicatorTheme: ProgressIndicatorThemesData.get(themeExt),
      navigationBarTheme: NavigationBarThemesData.get(themeExt),
      dividerTheme: DividerThemesData.get(themeExt),
      tabBarTheme: TabBarThemeData.get(themeExt),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: NoTransitionsBuilder(),
        TargetPlatform.iOS: NoTransitionsBuilder(),
        TargetPlatform.linux: NoTransitionsBuilder(),
        TargetPlatform.macOS: NoTransitionsBuilder(),
        TargetPlatform.windows: NoTransitionsBuilder(),
        TargetPlatform.fuchsia: NoTransitionsBuilder(),
      }),
    );
  }
}
