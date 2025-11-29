part of 'baby_phone_header_view.dart';

class _TitleBlock extends StatelessWidget {
  final bool isNavigationEnable;
  final Color? textColor;

  const _TitleBlock({this.isNavigationEnable = false, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        InkWell(
          onTap: isNavigationEnable ? () => context.navigateToBabyPhone() : null,
          child: Text('Baby Phone & Kids Games', textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: textColor)),
        ),
        const SizedBox(height: 16),
        Text('Educational apps for kids', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: textColor)),
        const SizedBox(height: 32),
      ],
    );
  }
}
