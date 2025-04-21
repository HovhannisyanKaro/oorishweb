import 'package:flutter/cupertino.dart';

import '../views/responsive_view.dart';

extension BuildContextExt on BuildContext {
  bool isMobile() => MediaQuery.of(this).size.width < 767;

  bool isTablet() => MediaQuery.of(this).size.width < 1024 && MediaQuery.of(this).size.width >= 768;

  bool isDesktop() => MediaQuery.of(this).size.width >= 1025;

  ResponsiveViewTypeEnum responsiveViewType() {
    if (isDesktop()) {
      return ResponsiveViewTypeEnum.desktop;
    } else if (isTablet()) {
      return ResponsiveViewTypeEnum.tablet;
    } else {
      return ResponsiveViewTypeEnum.mobile;
    }
  }
}
