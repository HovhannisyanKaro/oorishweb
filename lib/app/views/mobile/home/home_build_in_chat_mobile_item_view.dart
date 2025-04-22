import 'package:flutter/material.dart';

import '../../../../res/values/images/images.dart';
import '../../prefix_text_view.dart';

class HomeBuildInChatMobileItemView extends StatelessWidget {
  final double imageWidth;

  const HomeBuildInChatMobileItemView({super.key, required this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Build-in Chat', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PrefixTextView(text: 'No need for extra apps - chat directly within your cart',style: Theme.of(context).textTheme.labelMedium),
            PrefixTextView(text: 'Discuss items, plan purchases, and stay connected',style: Theme.of(context).textTheme.labelMedium),
            PrefixTextView(text: 'Communicate in real time', style: Theme.of(context).textTheme.labelMedium),

          ],
        ),
        const SizedBox(height: 32),
        AppIcons.imageBuildInChat.imageAsset(width: imageWidth, height: imageWidth),
      ],
    );
  }
}
