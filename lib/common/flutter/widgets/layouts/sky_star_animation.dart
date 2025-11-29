import 'dart:math' as math;

import 'package:flutter/material.dart';

class SkyStarAnimation extends StatefulWidget {
  const SkyStarAnimation({
    super.key,
    required this.fx,
    required this.fy,
    this.size = 18,
    this.color = const Color(0xFFFFF6B0),
    this.period = const Duration(seconds: 3),
    this.rotationMax = 0.10,
    this.scaleJitter = 0.08,
    this.opacityMin = 0.45,
    this.randomPhase = true,
  });

  final double fx, fy;
  final double size;
  final Color color;
  final Duration period;
  final double rotationMax;
  final double scaleJitter;
  final double opacityMin;
  final bool randomPhase;

  @override
  State<SkyStarAnimation> createState() => _SkyStarAnimationState();
}

class _SkyStarAnimationState extends State<SkyStarAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _c;
  late final double _phase;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(vsync: this, duration: widget.period)..repeat();
    _phase = widget.randomPhase ? math.Random().nextDouble() * 2 * math.pi : 0.0;
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final align = Alignment(widget.fx * 2 - 1, widget.fy * 2 - 1);

    return Align(
      alignment: align,
      child: AnimatedBuilder(
        animation: _c,
        builder: (_, __) {
          final t = _c.value * 2 * math.pi + _phase;
          final twinkle = (math.sin(t) + 1) / 2;
          final angle = math.sin(t) * widget.rotationMax;
          final scale = 1.0 + widget.scaleJitter * math.sin(t);
          final opacity = widget.opacityMin + (1 - widget.opacityMin) * twinkle;

          return Transform.rotate(
            angle: angle,
            child: Transform.scale(
              scale: scale,
              child: Opacity(
                opacity: opacity,
                child: Icon(
                  Icons.star_rounded,
                  size: widget.size,
                  color: widget.color,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
