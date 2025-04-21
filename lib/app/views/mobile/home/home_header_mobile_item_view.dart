import 'package:flutter/material.dart';

import '../../../../common/views/constraint_layout.dart';
import '../../../../res/values/images/images.dart';
import '../../../utils/app_utils.dart';

class HomeHeaderMobileItemView extends StatelessWidget {
  final double imageWidth;

  const HomeHeaderMobileItemView({super.key, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 32),
        Text('Shopping list for sharing & Calorie Tracker',textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Text('Easily create and share shopping lists with your family or friends \nTrack your Calories easily', style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 32),
        AppIcons.imageShopListCalCount2in1.imageAsset(width: imageWidth, height: imageWidth),
        const SizedBox(height: 32),
        _headerStoreButtons(context)
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
