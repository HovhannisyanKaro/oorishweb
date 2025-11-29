import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/baby_phone/res/baby_phone_onboard_enum.dart';
import 'package:oorishweb/app/pages/baby_phone/res/landing/baby_phone_landing_item_view.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';

class BabyPhoneLandingListview extends StatelessWidget {
  final PlatformTypeEnum platformType;
  final double imageWidth;

  const BabyPhoneLandingListview({super.key, required this.platformType, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    const items = BabyPhoneLandingEnum.values;

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return BabyPhoneLandingItemView(
          platformType: platformType,
          image: item.image,
          imageWidth: imageWidth,
          title: item.title,
          description: item.description,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Divider(
            height: 100,
            color: Colors.white.withValues(alpha: 0.5),
            thickness: 1,
            radius: const BorderRadius.all(Radius.circular(4)),
          ),
        );
      },
    );
  }
}
