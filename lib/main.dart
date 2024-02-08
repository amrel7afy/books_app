import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Features/splash/presentation/view/splash_view.dart';
import 'core/utils/constants/theme.dart';

void main(){
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  GetMaterialApp(
    theme: themeData,
    home: const SplashView(),
  );
  }
}