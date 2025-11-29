part of 'footer_view.dart';

class _ContactBlock extends StatelessWidget {
  const _ContactBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Title(text: 'CONTACT'),
        const SizedBox(height: 16),
        _SubTitle(text: 'Contact Us', onPressed: () => context.navigateToPrivacy()),
        _SubTitle(text: 'Licensing and Distribution', onPressed: () => context.navigateToPrivacy()),
        _SubTitle(text: 'Accessibility Statement'),
      ],
    );
  }
}
