import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/web/dashboard/dashboard_web_layout.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../enums/dashboard_tab_enum.dart';

class HelpCenterWebBody extends StatefulWidget {
  const HelpCenterWebBody({super.key});

  @override
  State<HelpCenterWebBody> createState() => _HelpCenterWebBodyState();
}

class _HelpCenterWebBodyState extends State<HelpCenterWebBody> {
  @override
  Widget build(BuildContext context) {
    return DashboardWebLayout(
        selectedTab: DashboardTabEnum.helpCenter,
        childBuilder: (context, constraints) {
          final width = constraints.maxWidth;
          final itemWidth = width / 4;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Text('HELP CENTER', style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: context.themeExt.onSurface.withOpacity(0.5))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Text('How can we help?', style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 64),
              _grid(itemWidth: itemWidth),
              const SizedBox(height: 128),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Text('Contact Support', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                  child: Text('We’re sorry that our FAQ did not answer your question. Send us a message to oorish2024@gmail.com! We’re looking forward to reading your email and we will answer it as quickly as we can.',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold, color: context.themeExt.onSurface.withOpacity(0.5)))),
            ],
          );
        });
  }

  Widget _grid({required double itemWidth}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(16),
          child: _helpGridItem(
            itemWidth: itemWidth,
            title: 'Items & Carts',
            description: 'How to create and edit items and Carts',
            icon: Icons.list_alt_rounded,
          ),
          onTap: () => context.navigateToItemsAndCarts(),
        ),
        const SizedBox(width: 32),
        InkWell(
          borderRadius: BorderRadius.circular(16),
          child: _helpGridItem(
            itemWidth: itemWidth,
            title: 'Inspirations & Suggestions',
            description: 'All answers to inspirations or suggestions',
            icon: Icons.line_axis_rounded,
          ),
          onTap: () {},
        ),
        const SizedBox(width: 32),
        InkWell(
          borderRadius: BorderRadius.circular(16),
          child: _helpGridItem(
            itemWidth: itemWidth,
            title: 'Profile & Settings',
            description: 'How to edit your profile',
            icon: Icons.manage_accounts_rounded,
          ),
          onTap: () => context.navigateToProfileSettings(),
        ),
      ],
    );
  }

  Widget _helpGridItem({required double itemWidth, required String title, required String description, required IconData icon}) {
    final themeExt = context.themeExt;
    return Container(
      width: itemWidth,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: themeExt.onSurface.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: themeExt.onSurface,
                ),
                child: Icon(icon, color: themeExt.surface),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 16),
              const Icon(Icons.arrow_forward_rounded),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            description,
            maxLines: 2,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(color: themeExt.onSurface.withOpacity(0.5), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
