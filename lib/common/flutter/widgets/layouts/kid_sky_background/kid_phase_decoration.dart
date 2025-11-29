import 'package:flutter/widgets.dart';

import '../drifting_clouds_background_animation_layout.dart';
import '../sky_stars_background_animation_layout.dart';
import 'kid_sky_background.dart';

class KidPhaseDecorationLayer extends StatelessWidget {
  const KidPhaseDecorationLayer({
    super.key,
    required this.phase,
    this.usePositionedFill = true,
    this.isStarsEnable = true,
    this.isCloudsEnable = true,
    this.isSunEnable = true,
    this.isMoonEnable = true,
  });

  final KidDayPhase? phase;

  final bool usePositionedFill;

  final bool isStarsEnable;
  final bool isCloudsEnable;
  final bool isSunEnable;
  final bool isMoonEnable;

  @override
  Widget build(BuildContext context) {
    if (phase == null) {
      return const SizedBox.shrink();
    }

    final children = switch (phase!) {
      KidDayPhase.morning => <Widget>[
          _stars(),
          _clouds(),
          // _happySun(),
        ],
      KidDayPhase.afternoon => <Widget>[
        _stars(),
          _clouds(),
        ],
      KidDayPhase.evening => <Widget>[
          _stars(),
          // _sadMoon(),
          _clouds(),
        ],
      KidDayPhase.night => <Widget>[
          _stars(),
          // _sadMoon(),
          _clouds(),
        ],
    };

    final content = Stack(children: children);
    return usePositionedFill ? Positioned.fill(child: content) : content;
  }

  Widget _stars() {
    if (!isStarsEnable) return const SizedBox.shrink();
    return SkyStarsBackgroundAnimationLayout(
      count: 20,
      minSize: 15,
      maxSize: 22,
      minPeriod: const Duration(seconds: 6),
      maxPeriod: const Duration(seconds: 10),
    );
  }

  Widget _clouds() {
    if (!isCloudsEnable) return const SizedBox.shrink();
    return DriftingCloudsBackgroundAnimationLayout.phoneHomeScreen();
  }
}
