import 'package:flutter/material.dart';

import '../../../../res/values/images/images.dart';
import '../../prefix_text_view.dart';

class HomeBuildInChatItemView extends StatelessWidget {
  final double imageWidth;

  const HomeBuildInChatItemView({super.key, required this.imageWidth});

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
            Text('Build-in Chat', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            PrefixTextView(text: 'No need for extra apps - chat directly within your cart', style: Theme.of(context).textTheme.labelSmall),
            PrefixTextView(text: 'Discuss items, plan purchases, and stay connected', style: Theme.of(context).textTheme.labelSmall),
            PrefixTextView(text: 'Communicate in real time', style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        const SizedBox(width: 64),
        AppIcons.imageBuildInChat.imageAsset(width: imageWidth, height: imageWidth),
      ],
    );
  }
}
