part of 'footer_view.dart';

class _SubTitle extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final FontWeight? fontWeight;

  const _SubTitle({super.key, required this.text, this.onPressed, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextButton(onPressed: onPressed, child: Text(text, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 14, color: context.themeExt.onPrimary, fontWeight: fontWeight))),
    );
  }
}
