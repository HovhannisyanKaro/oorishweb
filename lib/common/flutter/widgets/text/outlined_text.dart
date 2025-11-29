import 'package:flutter/material.dart';

class OutlinedText extends StatelessWidget {
  const OutlinedText(
    this.text, {
    super.key,
    required this.style,
    this.strokeColor = Colors.black,
    this.strokeWidth = 2,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap,
  });

  final String text;
  final TextStyle style;

  final Color strokeColor;
  final double strokeWidth;

  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          softWrap: softWrap,
          style: style.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..strokeJoin = StrokeJoin.round
              ..color = strokeColor,
            color: null,
          ),
        ),
        Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          softWrap: softWrap,
          style: style,
        ),
      ],
    );
  }
}
