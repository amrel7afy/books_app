import'package:flutter/material.dart';
import 'package:hive/hive.dart';
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

void navigateToWithDelayed(context,widgetId) {
  Future.delayed( kNavigationDurationVal).then((value) {
    Navigator.pushNamed(context, widgetId);
  });
}
void navigateTo(context,widgetId) {
    Navigator.pushNamed(context, widgetId);

}

Future<void> saveData<Type>( data,boxName) async {
  var box= Hive.box<Type>(boxName);
  await box.addAll(data);
}

