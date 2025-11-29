part of 'footer_view.dart';

class _Title extends StatelessWidget {
  final String text;

  const _Title({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextButton(onPressed: null, child: Text(text, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: context.themeExt.onPrimary))),
    );
  }
}
