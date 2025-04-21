import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../res/values/images/images.dart';

class LogoOorishView extends StatelessWidget {
  const LogoOorishView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeExt = context.themeExt;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: themeExt.onSurface,
      ),
      child: IntrinsicWidth(
        child: Row(
          children: [
            AppIcons.logoOorish.imageAsset(width: 40, height: 40),
            const SizedBox(width: 16),
            Text('oorish', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: themeExt.surface)),
          ],
        ),
      ),
    );
  }
}
