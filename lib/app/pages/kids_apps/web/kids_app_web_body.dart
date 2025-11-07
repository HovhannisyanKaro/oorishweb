import 'package:flutter/material.dart';

import '../../../enums/dashboard_tab_enum.dart';
import '../../../views/web/dashboard/dashboard_web_layout.dart';

class KidsAppWebBody extends StatefulWidget {
  const KidsAppWebBody({super.key});

  @override
  State<KidsAppWebBody> createState() => _KidsAppWebBodyState();
}

class _KidsAppWebBodyState extends State<KidsAppWebBody> {
  @override
  Widget build(BuildContext context) {
    return DashboardWebLayout(
        selectedTab: DashboardTabEnum.kidsApps,
        childBuilder: (context, constraints) {
          final width = constraints.maxWidth / 1.5;
          final headerImageSize = width / 2;
          final defaultImageSize = width / 2.5;
          return Column(
            children: [

            ],
          );
        });
  }
}
