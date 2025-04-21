import 'package:flutter/material.dart';
import 'package:oorishweb/app/pages/help_center/enums/help_center_enums.dart';

import '../../../../../../../views/mobile/help_center/help_center_steps_mobile_layout.dart';


class ChangeLanguageMobileBody extends StatelessWidget {
  const ChangeLanguageMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return HelpCenterStepsMobileLayout(helpCenterMenu: HelpCenterChangeAppLanguage.toHelpCenterMenu());
  }
}
