import 'package:books_app/core/utils/constants/widgets/snack_bar.dart';
import'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constants.dart';
String removeSubString(String string, String subString) {
  String escapedSubstring = RegExp.escape(subString);
  RegExp pattern = RegExp(escapedSubstring);

  if (pattern.hasMatch(string)) {
    return string.replaceAll(pattern, '');
  } else {
    return string;
  }
}
double getHeight(context) {
  return MediaQuery.of(context).size.height;
}
double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

void pushReplacementWithDelayed(context,widgetId) {
  Future.delayed( kNavigationDurationVal).then((value) {
    Navigator.pushReplacementNamed(context, widgetId);
  });
}
void navigateTo(context,widgetId,{arguments}) {
    Navigator.pushNamed(context, widgetId,arguments: arguments);

}
Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, 'Cannot launch $url');
    }
  }
}


