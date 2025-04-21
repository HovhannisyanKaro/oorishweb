enum ProfileSettingsMenuItems {
  changeAppearance(title: 'How to change the appearance of my app?'),
  deleteAnAccount(title: 'How to delete an account?'),
  changeLanguage(title: 'How do I change the language in oorish ?'),
  whereToFindPrivacyAndTerms(title: 'Where can I find your Terms of Use and Privacy Policy?'),
  ;

  final String title;

  const ProfileSettingsMenuItems({required this.title});
}