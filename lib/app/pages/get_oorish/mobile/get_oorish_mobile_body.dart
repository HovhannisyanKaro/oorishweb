import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/baby_phone/res/header/baby_phone_header_view.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';

import '../../../../res/values/widget_theme.dart';
import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import '../../../views/mobile/home/home_header_mobile_item_view.dart';

class GetOorishMobileBody extends StatefulWidget {
  const GetOorishMobileBody({super.key});

  @override
  State<GetOorishMobileBody> createState() => _GetOorishMobileBodyState();
}

class _GetOorishMobileBodyState extends State<GetOorishMobileBody> {
  @override
  Widget build(BuildContext context) {
    return DashboardMobileBodyLayout(
      selectedTab: DashboardTabEnum.home,
      childBuilder: (context, constraints) {
        final width = constraints.maxWidth;
        final headerImageSize = width / 1.2;
        return Column(
          children: [
            Text('Kids Apps', style: Theme.of(context).textTheme.displaySmall),
            const Divider(height: 64),
            BabyPhoneHeaderView(
              platformType: PlatformTypeEnum.mobile,
              imageSize: headerImageSize,
              theme: WidgetThemeEnum.dark,
              isNavigationEnable: true,
            ),
            const Divider(height: 64),
            Text('For Adults', style: Theme.of(context).textTheme.displaySmall),
            const Divider(height: 64),
            HomeHeaderMobileItemView(imageWidth: headerImageSize),
            const Divider(height: 64),
          ],
        );
      },
    );
  }
}
