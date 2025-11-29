
import 'package:flutter/material.dart';

class DriftingCloudAnimationView extends StatefulWidget {
  const DriftingCloudAnimationView({
    super.key,
    this.size = 64,
    this.y,
    this.duration = const Duration(seconds: 10),
    this.icon = const Icon(Icons.cloud, color: Colors.white),
    this.startFromRight = false,
  });

  final double size;
  final double? y;
  final Duration duration;
  final Widget icon;
  final bool startFromRight;

  @override
  State<DriftingCloudAnimationView> createState() => _DriftingCloudAnimationViewState();
}

class _DriftingCloudAnimationViewState extends State<DriftingCloudAnimationView> with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  late final AnimationController _c = AnimationController(vsync: this, duration: widget.duration);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (widget.startFromRight) {
      _c.value = 1.0;
      _c.repeat(reverse: true);
    } else {
      _c.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _c.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (!_c.isAnimating) _c.repeat(reverse: true);
    } else {
      _c.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, c) {
        final width = c.maxWidth;
        final anim = Tween<double>(begin: -widget.size, end: width).animate(CurvedAnimation(parent: _c, curve: Curves.linear));

        final child = SizedBox.square(
          dimension: widget.size,
          child: FittedBox(child: widget.icon),
        );

        return AnimatedBuilder(
          animation: anim,
          builder: (_, __) {
            return Transform.translate(
              offset: Offset(anim.value, 0),
              child: SizedBox(
                width: width,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: widget.y ?? 0),
                    child: child,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}







