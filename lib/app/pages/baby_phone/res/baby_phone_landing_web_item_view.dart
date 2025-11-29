// import 'package:flutter/material.dart';
// import 'package:oorishweb/app/views/prefix_text_view.dart';
//
// import '../../../../res/values/images/images.dart';
//
// class BabyPhoneLandingWebItemView extends StatelessWidget {
//   final AppIcons image;
//   final double imageWidth;
//   final String title;
//   final String description;
//
//   const BabyPhoneLandingWebItemView({super.key, required this.imageWidth, required this.image, required this.title, required this.description});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _emptySpace(),
//         Expanded(flex: 3, child: image.imageAsset(width: imageWidth, height: imageWidth)),
//         const SizedBox(width: 64),
//         Expanded(
//           flex: 3,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(title, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
//               const SizedBox(height: 32),
//               PrefixTextView(
//                 isPrefixEnable: false,
//                 text: description,
//                 style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
//               ),
//             ],
//           ),
//         ),
//         _emptySpace(),
//       ],
//     );
//   }
//
//   Widget _emptySpace() {
//     return Expanded(flex: 1, child: Container());
//   }
// }
