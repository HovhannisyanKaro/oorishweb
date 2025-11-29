part of 'baby_phone_header_view.dart';

class _LauncherIcon extends StatelessWidget {
  final double _radius = 16;
  final double _borderWidth = 2;

  const _LauncherIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(_radius),
        border: Border.all(color: Colors.white, width: _borderWidth),
        boxShadow: [
          BoxShadow(
            blurRadius: _radius,
            offset: const Offset(0, 8),
            spreadRadius: 0,
            color: Colors.black26,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_radius - (_borderWidth / 2)),
        child: AppIcons.babyPhoneIcLauncher.imageAsset(width: 120, height: 120),
      ),
    );
  }
}
