import 'package:flutter/material.dart';

import '../../../../../../../views/mobile/help_center/help_center_steps_mobile_layout.dart';
import '../../../../../enums/help_center_enums.dart';

class ChangeAppearanceMobileBody extends StatelessWidget {
  const ChangeAppearanceMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return HelpCenterStepsMobileLayout(helpCenterMenu: HelpCenterChangeAppearance.toHelpCenterMenu());
  }
}
