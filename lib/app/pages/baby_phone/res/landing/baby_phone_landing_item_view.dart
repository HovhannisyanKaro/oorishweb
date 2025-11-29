import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/prefix_text_view.dart';
import 'package:oorishweb/res/values/images/images.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';

part '_title.dart';

class BabyPhoneLandingItemView extends StatelessWidget {
  final AppIcons image;
  final double imageWidth;
  final String title;
  final String description;
  final PlatformTypeEnum platformType;

  const BabyPhoneLandingItemView({
    super.key,
    required this.image,
    required this.imageWidth,
    required this.title,
    required this.description,
    required this.platformType,
  });

  @override
  Widget build(BuildContext context) {
    return switch (platformType) {
      PlatformTypeEnum.web => _buildWeb(context),
      PlatformTypeEnum.mobile => _buildMobile(context),
    };
  }

  Widget _buildWeb(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _emptySpace(),
        Expanded(flex: 3, child: image.imageAsset(width: imageWidth, height: imageWidth)),
        const SizedBox(width: 64),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(height: 32),
              PrefixTextView(
                isPrefixEnable: false,
                text: description,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        _emptySpace(),
      ],
    );
  }

  Widget _buildMobile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 32),
          PrefixTextView(
            isPrefixEnable: false,
            text: description,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 32),
          image.imageAsset(width: imageWidth, height: imageWidth),
        ],
      ),
    );
  }

  Widget _emptySpace() {
    return Expanded(flex: 1, child: Container());
  }
}

