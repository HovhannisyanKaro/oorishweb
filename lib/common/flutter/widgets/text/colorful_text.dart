import 'package:flutter/material.dart';

import '../../../../res/values/colors.dart';

const _defaultColors = [AppColors.orangeYellow, AppColors.pinkishRed, AppColors.cyanBlue, AppColors.greenCyan];

class ColorfulText extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final double fontSize;

  const ColorfulText({super.key, required this.text, this.colors = _defaultColors, this.fontSize = 30});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: List.generate(
          text.length,
          (index) => TextSpan(
            text: text[index],
            style: TextStyle(
              color: colors[index % colors.length],
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
