


import'package:flutter/material.dart';
import 'package:get/get.dart';

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

void navigateWithAnimation(widget) {
  Future.delayed( kNavigationDurationVal).then((value) {
    Get.to( widget,transition: Transition.cupertinoDialog,duration: kTransitionDurationVal);
  });
}


