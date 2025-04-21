import 'package:flutter/cupertino.dart';

import '../../common/utils/string_utils.dart';
import 'const.dart';

Future<void> launchOorishGooglePlayStore(BuildContext context) async {
  StringUtils.launchUrlSafely(context, oorishGooglePlayStoreUrl);
}

Future<void> launchOorishAooStore(BuildContext context) async {
  StringUtils.launchUrlSafely(context, oorishAppStoreUrl);
}
