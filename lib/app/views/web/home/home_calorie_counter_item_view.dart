import 'package:flutter/material.dart';

import '../../../../res/values/images/images.dart';
import '../../prefix_text_view.dart';

class HomeCalorieCounterItemView extends StatelessWidget {
  final double imageWidth;

  const HomeCalorieCounterItemView({super.key, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcons.imageCalorieCounter.imageAsset(width: imageWidth, height: imageWidth),
        const SizedBox(width: 64),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Calorie Tracker', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            PrefixTextView(text: 'Track Calories Easily: Snap & Let AI Count!', style: Theme.of(context).textTheme.labelSmall),
            PrefixTextView(text: 'Food Insights: Calories, macros, health score', style: Theme.of(context).textTheme.labelSmall),
            PrefixTextView(text: 'Track progress: Reach your goals easily', style: Theme.of(context).textTheme.labelSmall),
          ],
        )
      ],
    );
  }
}
