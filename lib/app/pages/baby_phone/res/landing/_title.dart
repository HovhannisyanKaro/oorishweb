part of 'baby_phone_landing_item_view.dart';

class _Title extends StatelessWidget {
  final String text;

  const _Title({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.white));
  }
}
