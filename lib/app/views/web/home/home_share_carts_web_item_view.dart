import 'package:flutter/material.dart';

import '../../../../res/values/images/images.dart';
import '../../prefix_text_view.dart';

class HomeShareCartsWebItemView extends StatelessWidget {
  final double imageWidth;

  const HomeShareCartsWebItemView({super.key, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcons.imageShareCarts.imageAsset(width: imageWidth, height: imageWidth),
        const SizedBox(width: 64),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Share Carts', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            PrefixTextView(text: 'Make and share shopping carts together', style: Theme.of(context).textTheme.labelSmall),
            PrefixTextView(text: 'Instantly see changes with live updates on your grocery carts', style: Theme.of(context).textTheme.labelSmall),
            PrefixTextView(text: 'Get timely notifications when changes are made', style: Theme.of(context).textTheme.labelSmall),
          ],
        )
      ],
    );
  }
}
