// Можно вынести в отдельный файл, например oorish_apps.dart
enum OorishAppProduct {
  shoppingList(
    appStoreUrl: 'https://apps.apple.com/am/app/oorish-shopping-list/id6742078777',
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.berem.berem',
  ),
  babyPhone(
    appStoreUrl: 'https://apps.apple.com/am/app/oorish-baby-phone-kids-games/id6756133192',
    googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.oorishphone.oorishphone',
  );

  final String appStoreUrl;
  final String googlePlayUrl;

  const OorishAppProduct({
    required this.appStoreUrl,
    required this.googlePlayUrl,
  });
}