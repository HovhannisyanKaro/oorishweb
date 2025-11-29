part of 'footer_view.dart';

class _PrivacyBlock extends StatelessWidget {
  final DashboardTabEnum tab;
  const _PrivacyBlock({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Title(text: 'PRIVACY POLICY'),
        const SizedBox(height: 16),
        _SubTitle(text: 'Privacy Policy for Apps for Adults', onPressed: () => context.navigateToPrivacy(dashboardTab: tab)),
        _SubTitle(text: 'Privacy Policy for Kids\' Games', onPressed: () => context.navigateToBabyPhonePrivacy(dashboardTab: tab)),
        // _SubTitle(text: 'Accessibility Statement'),
      ],
    );
  }
}
