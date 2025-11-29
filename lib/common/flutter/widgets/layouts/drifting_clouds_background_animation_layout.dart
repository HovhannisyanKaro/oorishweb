import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../main.dart';
import 'drifting_cloud_animation_view.dart';

enum CloudStartMode { random, alternate, leftToRightOnly, rightToLeftOnly }

class DriftingCloudsBackgroundAnimationLayout extends StatefulWidget {
  const DriftingCloudsBackgroundAnimationLayout({
    super.key,
    this.child,
    this.count = 12,
    this.seed,
    this.minSize = 56,
    this.maxSize = 140,
    this.minOpacity = 0.25,
    this.maxOpacity = 0.9,
    this.minDuration = const Duration(seconds: 18),
    this.maxDuration = const Duration(seconds: 45),
    this.yFractionMin = 0.05,
    this.yFractionMax = 0.55,
    this.startMode = CloudStartMode.alternate,
    this.palette = const [Colors.white],
    this.iconBuilder,
  })  : assert(count >= 0),
        assert(minSize <= maxSize),
        assert(0 <= minOpacity && minOpacity <= maxOpacity && maxOpacity <= 1),
        assert(minDuration <= maxDuration),
        assert(0 <= yFractionMin && yFractionMin <= yFractionMax && yFractionMax <= 1);

  final Widget? child;

  final int count;

  final int? seed;

  final double minSize, maxSize;
  final double minOpacity, maxOpacity;

  final Duration minDuration, maxDuration;

  final double yFractionMin, yFractionMax;

  final CloudStartMode startMode;

  final List<Color> palette;

  final Widget Function(BuildContext context, Color color)? iconBuilder;

  @override
  State<DriftingCloudsBackgroundAnimationLayout> createState() => _DriftingCloudsBackgroundAnimationLayoutState();

  factory DriftingCloudsBackgroundAnimationLayout.phoneHomeScreen({double minSize = 56, double maxSize = 140}){
    return DriftingCloudsBackgroundAnimationLayout(
      startMode: CloudStartMode.random,
      count: 6,
      minOpacity: 0.1,
      maxOpacity: 0.2,
      minSize: minSize,
      maxSize: 400,
      minDuration: const Duration(seconds: 40),
      maxDuration: const Duration(seconds: 100),
    );
  }
}

class _DriftingCloudsBackgroundAnimationLayoutState extends State<DriftingCloudsBackgroundAnimationLayout> with RouteAware, WidgetsBindingObserver {
  late math.Random _rnd;
  late List<_CloudSpec> _specs;

  bool _animationsEnabled = true;

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
  void didUpdateWidget(covariant DriftingCloudsBackgroundAnimationLayout old) {
    super.didUpdateWidget(old);
    final changed = old.count != widget.count ||
        old.seed != widget.seed ||
        old.minSize != widget.minSize ||
        old.maxSize != widget.maxSize ||
        old.minOpacity != widget.minOpacity ||
        old.maxOpacity != widget.maxOpacity ||
        old.minDuration != widget.minDuration ||
        old.maxDuration != widget.maxDuration ||
        old.yFractionMin != widget.yFractionMin ||
        old.yFractionMax != widget.yFractionMax ||
        old.startMode != widget.startMode ||
        !_listEqualsColor(old.palette, widget.palette) ||
        (old.iconBuilder != widget.iconBuilder);
    if (changed) {
      _rnd = math.Random(widget.seed);
      _specs = _makeSpecs();
      setState(() {});
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    appRouteObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() => _resumeAnims();
  @override
  void didPopNext() => _resumeAnims();
  @override
  void didPushNext() => _pauseAnims();
  @override
  void didPop() => _pauseAnims();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        _resumeAnims();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        _pauseAnims();
        break;
      case AppLifecycleState.hidden:
        break;
    }
  }

  void _pauseAnims() {
    if (_animationsEnabled) setState(() => _animationsEnabled = false);
  }

  void _resumeAnims() {
    if (!_animationsEnabled) setState(() => _animationsEnabled = true);
  }

  List<_CloudSpec> _makeSpecs() {
    Color pickColor() => widget.palette[_rnd.nextInt(widget.palette.length)];

    bool pickStart(int i) {
      switch (widget.startMode) {
        case CloudStartMode.leftToRightOnly:
          return false;
        case CloudStartMode.rightToLeftOnly:
          return true;
        case CloudStartMode.alternate:
          return i.isOdd;
        case CloudStartMode.random:
          return _rnd.nextBool();
      }
    }

    double yFrac() => _lerp(widget.yFractionMin, widget.yFractionMax, _rnd.nextDouble());

    return List<_CloudSpec>.generate(widget.count, (i) {
      final size = _lerp(widget.minSize, widget.maxSize, _rnd.nextDouble());
      final opacity = _lerp(widget.minOpacity, widget.maxOpacity, _rnd.nextDouble());
      final durMs = _lerpInt(widget.minDuration.inMilliseconds, widget.maxDuration.inMilliseconds, _rnd.nextDouble());
      return _CloudSpec(
        yFraction: yFrac(),
        size: size,
        color: pickColor(),
        opacity: opacity,
        startFromRight: pickStart(i),
        duration: Duration(milliseconds: durMs),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final sorted = [..._specs]..sort((a, b) => a.size.compareTo(b.size));

    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        return Stack(
          fit: StackFit.expand,
          children: [
            TickerMode(
              enabled: _animationsEnabled,
              child: Positioned.fill(
                child: IgnorePointer(
                  child: Stack(
                    children: [
                      for (final s in sorted)
                        Opacity(
                          opacity: s.opacity,
                          child: DriftingCloudAnimationView(
                            size: s.size,
                            y: s.yFraction * h,
                            duration: s.duration,
                            startFromRight: s.startFromRight,
                            icon: (widget.iconBuilder != null)
                                ? widget.iconBuilder!(context, s.color)
                                : Icon(Icons.cloud_rounded, color: s.color),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            if (widget.child != null) widget.child!,
          ],
        );
      },
    );
  }
}

class _CloudSpec {
  const _CloudSpec({
    required this.yFraction,
    required this.size,
    required this.color,
    required this.opacity,
    required this.startFromRight,
    required this.duration,
  });

  final double yFraction;
  final double size;
  final Color color;
  final double opacity;
  final bool startFromRight;
  final Duration duration;
}

double _lerp(double a, double b, double t) => a + (b - a) * t;

int _lerpInt(int a, int b, double t) => (a + (b - a) * t).round();

bool _listEqualsColor(List<Color> a, List<Color> b) {
  if (identical(a, b)) return true;
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i].value != b[i].value) return false;
  }
  return true;
}
