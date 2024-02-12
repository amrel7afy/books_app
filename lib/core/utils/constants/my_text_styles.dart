import 'package:flutter/material.dart';

import 'my_colors.dart';

abstract class MyTextStyles {
  static const headLine1 = TextStyle();
  static const headLine2 = TextStyle();
  static const headLine3 = TextStyle();
  static const headLine4 = TextStyle(
    color: MyColors.kPrimaryColor,
    fontSize: 18
  );
  static const smallBody = TextStyle(
    color: MyColors.kPrimaryColor,
    fontWeight: FontWeight.w500
  );
  static const mediumBody = TextStyle();
  static const largeBody = TextStyle();
}
