import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/enums/help_center_enums.dart';
import 'package:oorishweb/res/values/images/images.dart';

class HelpCenterStepsGridWebView extends StatefulWidget {
  final HelpCenterMenu helpCenterMenu;

  const HelpCenterStepsGridWebView({super.key, required this.helpCenterMenu});

  @override
  State<HelpCenterStepsGridWebView> createState() => _HelpCenterStepsGridWebViewState();
}

class _HelpCenterStepsGridWebViewState extends State<HelpCenterStepsGridWebView> {
  @override
  Widget build(BuildContext context) {
    final items = widget.helpCenterMenu.items;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 1.4,
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (BuildContext context, int index) {
        return _item(items[index]);
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
    );
  }

  Widget _item(HelpCenterMenuItem item) {
    final index = item.index+1;
    return Column(
      children: [
        ClipRRect(borderRadius: BorderRadius.circular(16), child: item.image.imageAsset()),
        Text(index.toString(), style: Theme.of(context).textTheme.labelSmall),
        Text(item.title, style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
