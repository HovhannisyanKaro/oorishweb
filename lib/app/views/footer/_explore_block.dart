part of 'footer_view.dart';

class _ExploreBlock extends StatelessWidget {
  const _ExploreBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Title(text: 'EXPLORE'),
        const SizedBox(height: 16),
        _SubTitle(text: 'Baby Phone', onPressed: () => context.navigateToBabyPhone()),
        _SubTitle(text: 'Shopping List', onPressed: () => context.navigateToShoppingList()),
      ],
    );
  }
}
