import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/baby_phone/res/header/baby_phone_header_view.dart';
import 'package:oorishweb/app/pages/baby_phone/res/landing/baby_phone_landing_listview.dart';
import 'package:oorishweb/app/views/mobile/dashboard/dashboard_mobile_body_layout.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';

import '../res/baby_phone_onboard_enum.dart';

class BabyPhoneMobileBody extends StatefulWidget {
  const BabyPhoneMobileBody({super.key});

  @override
  State<BabyPhoneMobileBody> createState() => _BabyPhoneMobileBodyState();
}

class _BabyPhoneMobileBodyState extends State<BabyPhoneMobileBody> {
  final _items = BabyPhoneLandingEnum.values;

  @override
  Widget build(BuildContext context) {
    return DashboardMobileBodyLayout(
      selectedTab: DashboardTabEnum.babyPhone,
      childBuilder: (context, constraints) {
        final width = constraints.maxWidth;
        final headerImageSize = width / 1.2;

        final defaultImageSize = headerImageSize * 0.8;
        return SingleChildScrollView(
          child: Column(
            children: [
              // BabyPhoneHeaderMobileItemView(imageWidth: headerImageSize, isNavigationEnable: false),
              BabyPhoneHeaderView(platformType: PlatformTypeEnum.mobile, imageSize: headerImageSize),
              const Divider(height: 64, color: Colors.white),
              BabyPhoneLandingListview(
                platformType: PlatformTypeEnum.mobile,
                imageWidth: defaultImageSize,
              ),
              // ListView.separated(
              //   physics: const NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemCount: _items.length,
              //   itemBuilder: (context, index) {
              //     final item = _items[index];
              //     return BabyPhoneLandingMobileItemView(imageWidth: defaultImageSize, image: item.image, title: item.title, description: item.description);
              //   },
              //   separatorBuilder: (BuildContext context, int index) {
              //     return Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 32.0),
              //       child: Divider(
              //         height: 100,
              //         color: Colors.white.withValues(alpha: 0.5),
              //         thickness: 1,
              //         radius: BorderRadius.all(Radius.circular(4)),
              //       ),
              //     );
              //   },
              // ),
              // HomeHeaderMobileItemView(imageWidth: headerImageSize),
              // const Divider(height: 64),
              // HomeShareCartsMobileItemView(imageWidth: headerImageSize),
              // const Divider(height: 64),
              // HomeBuildInChatMobileItemView(imageWidth: headerImageSize),
              // const Divider(height: 64),
              // HomeCalorieCounterMobileItemView(imageWidth: headerImageSize),
            ],
          ),
        );
      },
    );
  }
}
