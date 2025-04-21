import 'package:flutter/material.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

class PrefixTextView extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double prefixFontSize;

  const PrefixTextView({super.key, required this.text, this.style, this.prefixFontSize = 10});

  @override
  Widget build(BuildContext context) {
    final txtStyle = style ?? Theme.of(context).textTheme.labelSmall;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: '●', style: txtStyle?.copyWith(fontSize: prefixFontSize, color: context.themeExt.onSurface)),
          TextSpan(text: '    ', style: txtStyle?.copyWith(fontSize: prefixFontSize, color: context.themeExt.onSurface)),
          TextSpan(text: text, style: txtStyle),
        ],
      ),
    );
  }
}
