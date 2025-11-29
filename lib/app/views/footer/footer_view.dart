import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/main.dart';
import 'package:oorishweb/res/values/platform_type_enum.dart';
import 'package:oorishweb/res/values/theme/theme_ext.dart';

part '_contact_block.dart';
part '_divider.dart';
part '_explore_block.dart';
part '_privacy_block.dart';
part '_sub_title.dart';
part '_title.dart';

class FooterView extends StatelessWidget {
  final DashboardTabEnum dashboardTab;
  final PlatformTypeEnum platformType;

  const FooterView({super.key, required this.platformType, required this.dashboardTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.themeExt.onSurface,
      padding: const EdgeInsets.all(32),
      child: switch (platformType) {
        PlatformTypeEnum.web => _buildWeb(),
        PlatformTypeEnum.mobile => _buildMobile(),
      },
    );
  }

  Widget _buildWeb() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 32,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _ExploreBlock(),
            _PrivacyBlock(tab: dashboardTab),
            // const _ContactBlock(),
          ],
        ),
        _divider(),
        _copyrightSubTitle(),
      ],
    );
  }

  Widget _buildMobile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _ExploreBlock(),
        _divider(),
        _PrivacyBlock(tab: dashboardTab),
        _divider(),
        const _ContactBlock(),
        _divider(),
        _copyrightSubTitle(),
      ],
    );
  }

  Widget _divider() => const _Divider();

  Widget _copyrightSubTitle() {
    return const _SubTitle(text: 'Copyright Ⓒ 2025 Oorish AppStudios LLC', fontWeight: FontWeight.bold);
  }
}
