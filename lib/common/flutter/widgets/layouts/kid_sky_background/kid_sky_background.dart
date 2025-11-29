import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum KidDayPhase { morning, afternoon, evening, night }

extension KidDayPhaseExt on KidDayPhase? {
  bool isLight() {
    final safeThis = this;
    if (safeThis == null) return false;
    return safeThis == KidDayPhase.morning || safeThis == KidDayPhase.afternoon;
  }

  bool isDark() {
    final safeThis = this;
    if (safeThis == null) return false;
    return safeThis == KidDayPhase.evening || safeThis == KidDayPhase.night;
  }

  bool get isNight => this != null && this == KidDayPhase.night;

  bool get isMorning => this != null && this == KidDayPhase.morning;
}

extension KidDayPhaseX on KidDayPhase {
  int get asIndex => index + 1;

  String get nameShort => ['morning', 'afternoon', 'evening', 'night'][index];
}

class _KidSkyPalettes {
  static const morning = [
    Color(0xFFFFE6A9),
    Color(0xFFFFC2D1),
    Color(0xFFB3E5FF),
  ];

  static const afternoon = [
    Color(0xFF8FD3FF),
    Color(0xFF6EE7F9),
  ];

  static const evening = [
    Color(0xFFFFB27D),
    Color(0xFFFF86B7),
    Color(0xFF8D7AFF),
  ];

  static const night = [
    Color(0xFF1C2C57),
    Color(0xFF2E3E7A),
    Color(0xFF4C5AA4),
  ];
}

KidDayPhase kidPhaseFor(DateTime t) {
  final h = t.hour;
  if (h >= 6 && h < 11) return KidDayPhase.morning;
  if (h >= 11 && h < 17) return KidDayPhase.afternoon;
  if (h >= 17 && h < 20) return KidDayPhase.evening;
  return KidDayPhase.night;
}

class KidSkyBackground extends StatefulWidget {
  const KidSkyBackground({
    super.key,
    this.child,
    this.onPhaseChanged,
    this.phaseOverride,
    this.checkInterval = const Duration(minutes: 1),
    this.animationMs = 600,
    this.alignment = Alignment.topCenter,
    this.isTestMode = kDebugMode ? true : false,
    this.testCycleInterval = const Duration(seconds: 20),
  });

  final Widget? child;
  final ValueChanged<int>? onPhaseChanged;
  final KidDayPhase? phaseOverride;
  final Duration checkInterval;
  final int animationMs;
  final Alignment alignment;

  final bool isTestMode;
  final Duration testCycleInterval;

  @override
  State<KidSkyBackground> createState() => _KidSkyBackgroundState();
}

class _KidSkyBackgroundState extends State<KidSkyBackground> {
  late KidDayPhase _phase;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _phase = widget.phaseOverride ?? kidPhaseFor(DateTime.now());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onPhaseChanged?.call(_phase.asIndex);
    });
    _startTimer();
  }

  @override
  void didUpdateWidget(covariant KidSkyBackground oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.phaseOverride != widget.phaseOverride) {
      final forced = widget.phaseOverride;
      if (forced != null && forced != _phase) {
        setState(() => _phase = forced);
        widget.onPhaseChanged?.call(_phase.asIndex);
      }
    }

    final timingChanged = oldWidget.isTestMode != widget.isTestMode || oldWidget.testCycleInterval != widget.testCycleInterval || oldWidget.checkInterval != widget.checkInterval;
    if (timingChanged) _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    if (widget.isTestMode) {
      _timer = Timer.periodic(widget.testCycleInterval, (_) => _advancePhase());
    } else {
      _timer = Timer.periodic(widget.checkInterval, (_) => _maybeUpdatePhase());
    }
  }

  void _advancePhase() {
    if (widget.phaseOverride != null) return;
    const values = KidDayPhase.values;
    final next = values[(_phase.index + 1) % values.length];
    setState(() => _phase = next);
    widget.onPhaseChanged?.call(_phase.asIndex);
  }

  void _maybeUpdatePhase() {
    if (widget.phaseOverride != null) return;
    final nowPhase = kidPhaseFor(DateTime.now());
    if (nowPhase != _phase) {
      setState(() => _phase = nowPhase);
      widget.onPhaseChanged?.call(_phase.asIndex);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  List<Color> _colorsFor(KidDayPhase p) {
    switch (p) {
      case KidDayPhase.morning:
        return _KidSkyPalettes.morning;
      case KidDayPhase.afternoon:
        return _KidSkyPalettes.afternoon;
      case KidDayPhase.evening:
        return _KidSkyPalettes.evening;
      case KidDayPhase.night:
        return _KidSkyPalettes.night;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = _colorsFor(_phase);
    return AnimatedContainer(
      duration: Duration(milliseconds: widget.animationMs),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      alignment: widget.alignment,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (widget.child != null) widget.child!,
        ],
      ),
    );
  }
}