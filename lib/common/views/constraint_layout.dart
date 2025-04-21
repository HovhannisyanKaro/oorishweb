import 'package:flutter/material.dart';

class OorishConstraintLayout extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  final double maxHeight;

  const OorishConstraintLayout({super.key, required this.child, required this.maxWidth, required this.maxHeight});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth, maxHeight: maxHeight),
        child: child,
      ),
    );
  }
}
