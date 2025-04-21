import 'package:flutter/material.dart';
import 'package:oorishweb/common/views/constraint_layout.dart';
import 'package:oorishweb/res/values/images/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth / 1.5;
      final imageWidth = width / 2;
      return Center(
        child: SizedBox(
          width: width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('Shopping list for sharing & \nCalorie Tracker', style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 32),
                          Text('Easily create and share shopping lists with your family or friends & Calorie Tracker', style: Theme.of(context).textTheme.labelSmall),
                          const SizedBox(height: 32),
                          Wrap(
                            children: [
                              OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageAppStore.imageAsset(width: 180, height: 50)),
                              const SizedBox(width: 16),
                              OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageGoogleStore.imageAsset(width: 180, height: 50)),
                            ],
                          )
                        ],
                      ),
                    ),
                    AppIcons.imageShopListCalCount2in1.imageAsset(width: imageWidth, height: imageWidth),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
