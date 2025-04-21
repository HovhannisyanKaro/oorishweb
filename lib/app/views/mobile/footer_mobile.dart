import 'package:flutter/material.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

import '../../../common/views/constraint_layout.dart';
import '../../../res/values/images/images.dart';
import '../../enums/dashboard_tab_enum.dart';
import '../../utils/app_utils.dart';

class FooterMobile extends StatelessWidget {
  final DashboardTabEnum dashboardTab;
  final bool isPrivacyClickable;

  const FooterMobile({super.key, required this.dashboardTab, this.isPrivacyClickable = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 100),
        const SizedBox(height: 32),
        InkWell(onTap: () => launchOorishAooStore(context), child: OorishConstraintLayout(maxWidth: 200, maxHeight: 55, child: AppIcons.imageAppStore.imageAsset(width: 200, height: 55))),
        const SizedBox(height: 32),
        InkWell(onTap: () => launchOorishGooglePlayStore(context), child: OorishConstraintLayout(maxWidth: 200, maxHeight: 55, child: AppIcons.imageGoogleStore.imageAsset(width: 200, height: 55))),
        const SizedBox(height: 32),
        _privacyTextButton(context),
        _downloadTextButton(context),
      ],
    );
  }

  Widget _storeButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(onTap: () => launchOorishAooStore(context), child: OorishConstraintLayout(maxWidth: 200, maxHeight: 55, child: AppIcons.imageAppStore.imageAsset(width: 200, height: 55))),
        InkWell(onTap: () => launchOorishGooglePlayStore(context), child: OorishConstraintLayout(maxWidth: 200, maxHeight: 55, child: AppIcons.imageGoogleStore.imageAsset(width: 200, height: 55))),
      ],
    );
  }

  Widget _privacy(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _privacyTextButton(context),
          _downloadTextButton(context),
        ],
      ),
    );
  }

  Widget _privacyTextButton(BuildContext context) {
    final themeExt = context.themeExt;
    return TextButton(
      child: Text('© 2025 oorish - Privacy policy', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: themeExt.onSurface.withOpacity(0.5))),
      onPressed: () {
        if (isPrivacyClickable) context.navigateToPrivacy(dashboardTab: dashboardTab);
      },
    );
  }

  Widget _downloadTextButton(BuildContext context) {
    final themeExt = context.themeExt;
    return TextButton(
      child: Text('Download', style: Theme.of(context).textTheme.labelSmall?.copyWith(color: themeExt.primary, fontWeight: FontWeight.bold)),
      onPressed: () => launchOorishGooglePlayStore(context),
    );
  }
}
