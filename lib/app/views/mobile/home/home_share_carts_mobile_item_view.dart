import 'package:flutter/material.dart';

import '../../../../res/values/images/images.dart';
import '../../prefix_text_view.dart';

class HomeShareCartsMobileItemView extends StatelessWidget {
  final double imageWidth;

  const HomeShareCartsMobileItemView({super.key, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Share Carts', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PrefixTextView(text: 'Make and share shopping carts together', isPrefixEnable: false, style: Theme.of(context).textTheme.labelMedium),
            PrefixTextView(text: 'Instantly see changes with live updates on your grocery carts', isPrefixEnable: false, style: Theme.of(context).textTheme.labelMedium),
            PrefixTextView(text: 'Get timely notifications when changes are made', isPrefixEnable: false, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        const SizedBox(height: 32),
        AppIcons.imageShareCarts.imageAsset(width: imageWidth, height: imageWidth),
        const SizedBox(width: 64),
      ],
    );
  }
}
