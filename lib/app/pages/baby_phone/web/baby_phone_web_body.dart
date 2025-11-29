import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/baby_phone/res/header/baby_phone_header_view.dart';
import 'package:oorishweb/app/pages/baby_phone/res/landing/baby_phone_landing_listview.dart';
import 'package:oorishweb/app/views/web/dashboard/dashboard_web_layout.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';

import '../res/baby_phone_onboard_enum.dart';

PreferredSize dashboardWebAppbar() => const PreferredSize(preferredSize: Size.zero, child: SizedBox());

class BabyPhoneWebBody extends StatefulWidget {
  const BabyPhoneWebBody({super.key});

  @override
  State<BabyPhoneWebBody> createState() => _BabyPhoneWebBodyState();
}

class _BabyPhoneWebBodyState extends State<BabyPhoneWebBody> {
  final _items = BabyPhoneLandingEnum.values;

  @override
  Widget build(BuildContext context) {
    return DashboardWebLayout(
        selectedTab: DashboardTabEnum.babyPhone,
        childBuilder: (context, constraints) {
          final width = constraints.maxWidth / 1.5;
          final headerImageSize = width / 2;
          final defaultImageSize = width / 2.5;
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 32),
                BabyPhoneHeaderView(platformType: PlatformTypeEnum.web, imageSize: headerImageSize),
                BabyPhoneLandingListview(platformType: PlatformTypeEnum.web, imageWidth: defaultImageSize),

                // ListView.separated(
                //   physics: const NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   itemCount: _items.length,
                //   itemBuilder: (context, index) {
                //     final item = _items[index];
                //     return BabyPhoneLandingWebItemView(imageWidth: defaultImageSize, image: item.image, title: item.title, description: item.description);
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
              ],
            ),
          );
        });
  }
}
