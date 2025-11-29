// import 'package:flutter/material.dart';
// import 'package:oorishweb/main.dart';
// import 'package:oorishweb/res/values/widget_theme.dart';
//
// import '../../../../common/views/constraint_layout.dart';
// import '../../../../res/values/images/images.dart';
// import '../../../utils/app_utils.dart';
//
// class BabyPhoneHeaderWebItemView extends StatelessWidget {
//   final double imageWidth;
//   final WidgetThemeEnum theme;
//   final bool isNavigationEnable;
//
//   const BabyPhoneHeaderWebItemView({
//     super.key,
//     required this.imageWidth,
//     this.theme = WidgetThemeEnum.light,
//     this.isNavigationEnable = true,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final textColor = theme == WidgetThemeEnum.light ? Colors.white : null;
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             InkWell(
//               onTap: isNavigationEnable ? () => context.navigateToBabyPhone() : null,
//               child: Text('Baby Phone & Kids Games', style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold, color: textColor)),
//             ),
//             const SizedBox(height: 16),
//             Text('Educational apps for kids', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: textColor)),
//             const SizedBox(height: 32),
//             _headerStoreButtons(context)
//           ],
//         ),
//         AppIcons.babyPhoneLaunchHome.imageAsset(width: imageWidth, height: imageWidth),
//       ],
//     );
//   }
//
//   Widget _headerStoreButtons(BuildContext context) {
//     return Wrap(
//       alignment: WrapAlignment.end,
//       crossAxisAlignment: WrapCrossAlignment.end,
//       children: [
//         _launcher(),
//         const SizedBox(width: 16),
//         InkWell(onTap: () => launchOorishAooStore(context), child: OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageAppStore.imageAsset(width: 180, height: 50))),
//         InkWell(onTap: () => launchOorishGooglePlayStore(context), child: OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageGoogleStore.imageAsset(width: 180, height: 50))),
//       ],
//     );
//   }
//
//   final double _radius = 16;
//   final double _borderWidth = 2;
//
//   Widget _launcher() {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(_radius),
//         border: Border.all(
//           color: Colors.white,
//           width: _borderWidth,
//         ),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: _radius,
//             offset: const Offset(0, 8),
//             spreadRadius: 0,
//             color: Colors.black26,
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(_radius - (_borderWidth / 2)),
//         child: AppIcons.babyPhoneIcLauncher.imageAsset(width: 120, height: 120),
//       ),
//     );
//   }
// }
