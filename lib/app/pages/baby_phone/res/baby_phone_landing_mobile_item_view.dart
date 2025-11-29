// import 'package:flutter/material.dart';
// import 'package:oorishweb/app/views/prefix_text_view.dart';
//
// import '../../../../res/values/images/images.dart';
//
// class BabyPhoneLandingMobileItemView extends StatelessWidget {
//   final AppIcons image;
//   final double imageWidth;
//   final String title;
//   final String description;
//
//   const BabyPhoneLandingMobileItemView({super.key, required this.imageWidth, required this.image, required this.title, required this.description});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 32.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
//           const SizedBox(height: 32),
//           PrefixTextView(
//             isPrefixEnable: false,
//             text: description,
//             style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
//           ),
//           const SizedBox(height: 32),
//           image.imageAsset(width: imageWidth, height: imageWidth),
//         ],
//       ),
//     );
//   }
//
//   Widget _emptySpace() {
//     return Expanded(flex: 1, child: Container());
//   }
// }
