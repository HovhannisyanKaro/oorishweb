import 'package:flutter/material.dart';

import '../../logo_oorish.dart';

class DashboardHeaderView extends StatelessWidget {
  final Widget tabBarView;

  const DashboardHeaderView({super.key, required this.tabBarView});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(padding: EdgeInsets.only(left: 16), child: LogoOorishView()),
        Align(alignment: Alignment.centerRight, child: tabBarView),
      ],
    );
  }
}
