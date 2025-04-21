import 'package:flutter/material.dart';
import 'package:oorishweb/app/views/logo_oorish.dart';

PreferredSizeWidget dashboardMobileAppBar(BuildContext context, GlobalKey<ScaffoldState> drawerKey) {
  return AppBar(
    elevation: 0,
    leadingWidth: 150,
    leading: const LogoOorishView(),
    actions: [
      IconButton(
        onPressed: () => drawerKey.currentState!.openEndDrawer(),
        icon: const Icon(Icons.menu, color: Colors.black),
      ),
      // HeaderActionItems(),
    ],
  );
}

class HomeMobileBody extends StatefulWidget {
  const HomeMobileBody({super.key});

  @override
  State<HomeMobileBody> createState() => _HomeMobileBodyState();
}

class _HomeMobileBodyState extends State<HomeMobileBody> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
