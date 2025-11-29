import 'package:flutter/material.dart';
import 'package:oorishweb/app/enums/dashboard_tab_enum.dart';
import 'package:oorishweb/app/pages/baby_phone/mobile/baby_phone_mobile_body.dart';
import 'package:oorishweb/app/pages/baby_phone/web/baby_phone_web_body.dart';
import 'package:oorishweb/app/views/oorish_page.dart';
import 'package:oorishweb/common/flutter/widgets/layouts/kid_sky_background/kid_sky_background.dart';

import '../../../common/flutter/widgets/layouts/kid_sky_background/kid_phase_decoration.dart';

class BabyPhonePage extends StatefulWidget {
  const BabyPhonePage({super.key});

  @override
  State<BabyPhonePage> createState() => _BabyPhonePageState();
}

class _BabyPhonePageState extends State<BabyPhonePage> {

  @override
  Widget build(BuildContext context) {
    return const KidSkyBackground(
      phaseOverride: KidDayPhase.afternoon,
      child: Stack(
        children: [
          KidPhaseDecorationLayer(phase: KidDayPhase.afternoon),
          OorishPage(
            backgroundColor: Colors.transparent,
            webBody: BabyPhoneWebBody(),
            mobileBody: BabyPhoneMobileBody(),
            dashboardTabEnum: DashboardTabEnum.babyPhone,
          ),
        ],
      ),
    );
  }
}
