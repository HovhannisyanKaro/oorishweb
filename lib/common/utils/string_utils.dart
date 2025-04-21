import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class StringUtils {
  static Future<void> launchUrlSafely(BuildContext context, String address, {String? errorMsg}) async {
    String url = address.trim();

    if (!url.startsWith(RegExp(r'http://|https://'))) {
      url = 'https://$url';
    }

    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // if (context.mounted) {
      //   context.snackbarError(errorMsg);
      // }
    }
  }
}
