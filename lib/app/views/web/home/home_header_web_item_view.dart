import 'package:flutter/material.dart';

import '../../../../common/views/constraint_layout.dart';
import '../../../../res/values/images/images.dart';
import '../../../utils/app_utils.dart';

class HomeHeaderWebItemView extends StatelessWidget {
  final double imageWidth;

  const HomeHeaderWebItemView({super.key, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Shopping list for sharing & \nCalorie Tracker', style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text('Easily create and share shopping lists with your family or friends \nTrack your Calories easily', style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 32),
            _headerStoreButtons(context)
          ],
        ),
        AppIcons.imageShopListCalCount2in1.imageAsset(width: imageWidth, height: imageWidth),
      ],
    );
  }

  Widget _headerStoreButtons(BuildContext context) {
    return Wrap(
      children: [
        InkWell(onTap: () => launchOorishAooStore(context), child: OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageAppStore.imageAsset(width: 180, height: 50))),
        InkWell(onTap: () => launchOorishGooglePlayStore(context), child: OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageGoogleStore.imageAsset(width: 180, height: 50))),
      ],
    );
  }
}
