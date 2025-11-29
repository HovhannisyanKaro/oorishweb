import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:oorishweb/common/flutter/widgets/layouts/sky_star_animation.dart';

import '../../../../main.dart';

class SkyStarsBackgroundAnimationLayout extends StatefulWidget {
  const SkyStarsBackgroundAnimationLayout({
    super.key,
    this.child,
    this.count = 24,
    this.seed,
    this.minSize = 10,
    this.maxSize = 22,
    this.minOpacity = 0.35,
    this.maxOpacity = 1.0,
    this.minPeriod = const Duration(seconds: 2),
    this.maxPeriod = const Duration(seconds: 4),
    this.minRotation = 0.04,
    this.maxRotation = 0.14,
    this.minScaleJitter = 0.04,
    this.maxScaleJitter = 0.12,
    this.edgePadding = 0.02,
    this.randomPhase = true,
    this.palette,
    this.baseColor = const Color(0xFFFFF6B0),
  })  : assert(count >= 0),
        assert(minSize <= maxSize),
        assert(minOpacity >= 0 && maxOpacity <= 1 && minOpacity <= maxOpacity),
        assert(minPeriod <= maxPeriod),
        assert(minRotation <= maxRotation),
        assert(minScaleJitter <= maxScaleJitter),
        assert(edgePadding >= 0 && edgePadding <= 0.5);

  final Widget? child;
  final int count;
  final int? seed;

  final double minSize;
  final double maxSize;

  final double minOpacity;
  final double maxOpacity;

  final Duration minPeriod;
  final Duration maxPeriod;

  final double minRotation;
  final double maxRotation;

  final double minScaleJitter;
  final double maxScaleJitter;

  final double edgePadding;

  final bool randomPhase;

  final List<Color>? palette;
  final Color baseColor;

  @override
  State<SkyStarsBackgroundAnimationLayout> createState() => _SkyStarsBackgroundAnimationLayoutState();
}

class _SkyStarsBackgroundAnimationLayoutState extends State<SkyStarsBackgroundAnimationLayout> with RouteAware, WidgetsBindingObserver {
  late final math.Random _rnd;
  late List<_StarSpec> _specs;

  bool _animsEnabled = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _rnd = math.Random(widget.seed);
    _specs = _makeSpecs();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route is PageRoute) {
      appRouteObserver.subscribe(this, route);
    }
  }

  @override
  void didUpdateWidget(covariant SkyStarsBackgroundAnimationLayout old) {
    super.didUpdateWidget(old);
    final importantChanged = old.count != widget.count ||
        old.seed != widget.seed ||
        old.edgePadding != widget.edgePadding ||
        old.palette?.length != widget.palette?.length ||
        old.baseColor != widget.baseColor ||
        old.minSize != widget.minSize ||
        old.maxSize != widget.maxSize ||
        old.minOpacity != widget.minOpacity ||
        old.maxOpacity != widget.maxOpacity ||
        old.minPeriod != widget.minPeriod ||
        old.maxPeriod != widget.maxPeriod ||
        old.minRotation != widget.minRotation ||
        old.maxRotation != widget.maxRotation ||
        old.minScaleJitter != widget.minScaleJitter ||
        old.maxScaleJitter != widget.maxScaleJitter ||
        old.randomPhase != widget.randomPhase;

    if (importantChanged) {
      _rnd = math.Random(widget.seed);
      _specs = _makeSpecs();
      setState(() {});
    }
  }

  @override
  void dispose() {
    appRouteObserver.unsubscribe(this);
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didPush() => _resume();

  @override
  void didPopNext() => _resume();

  @override
  void didPushNext() => _pause();

  @override
  void didPop() => _pause();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _resume();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        _pause();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  void _pause() {
    if (_animsEnabled) setState(() => _animsEnabled = false);
  }

  void _resume() {
    if (!_animsEnabled) setState(() => _animsEnabled = true);
  }

  List<_StarSpec> _makeSpecs() {
    final pad = widget.edgePadding;
    final fxMin = pad, fxMax = 1 - pad;
    final fyMin = pad, fyMax = 1 - pad;

    final maxA = widget.maxOpacity.clamp(0.0, 1.0);
    final minA = widget.minOpacity.clamp(0.0, maxA);
    final normalizedOpacityMin = maxA <= 0 ? 0.0 : (minA / maxA).clamp(0.0, 1.0);

    Color pickColor() {
      final base = (widget.palette == null || widget.palette!.isEmpty) ? widget.baseColor : widget.palette![_rnd.nextInt(widget.palette!.length)];
      return base.withValues(alpha: maxA);
    }

    return List<_StarSpec>.generate(widget.count, (_) {
      final fx = _lerp(fxMin, fxMax, _rnd.nextDouble());
      final fy = _lerp(fyMin, fyMax, _rnd.nextDouble());
      final size = _lerp(widget.minSize, widget.maxSize, _rnd.nextDouble());
      final rot = _lerp(widget.minRotation, widget.maxRotation, _rnd.nextDouble());
      final jitter = _lerp(widget.minScaleJitter, widget.maxScaleJitter, _rnd.nextDouble());
      final periodMs = _lerpInt(widget.minPeriod.inMilliseconds, widget.maxPeriod.inMilliseconds, _rnd.nextDouble());
      return _StarSpec(
        fx: fx,
        fy: fy,
        size: size,
        color: pickColor(),
        rotationMax: rot,
        scaleJitter: jitter,
        period: Duration(milliseconds: periodMs),
        opacityMinNormalized: normalizedOpacityMin,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final stars = _specs.map((s) {
      return SkyStarAnimation(
        fx: s.fx,
        fy: s.fy,
        size: s.size,
        color: s.color,
        period: s.period,
        rotationMax: s.rotationMax,
        scaleJitter: s.scaleJitter,
        opacityMin: s.opacityMinNormalized,
        randomPhase: widget.randomPhase,
      );
    }).toList();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          TickerMode(
            enabled: _animsEnabled,
            child: Positioned.fill(
              child: IgnorePointer(
                child: Stack(children: stars),
              ),
            ),
          ),
          if (widget.child != null) widget.child!,
        ],
      ),
    );
  }
}

class _StarSpec {
  const _StarSpec({
    required this.fx,
    required this.fy,
    required this.size,
    required this.color,
    required this.period,
    required this.rotationMax,
    required this.scaleJitter,
    required this.opacityMinNormalized,
  });

  final double fx, fy;
  final double size;
  final Color color;
  final Duration period;
  final double rotationMax;
  final double scaleJitter;
  final double opacityMinNormalized;
}

double _lerp(double a, double b, double t) => a + (b - a) * t;

int _lerpInt(int a, int b, double t) => (a + (b - a) * t).round();
