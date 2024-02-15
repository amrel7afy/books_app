

import 'package:books_app/Features/home/presentation/view/home_view.dart';
import 'package:books_app/Features/splash/presentation/view/splash_view.dart';

import 'package:flutter/material.dart';


class AppRouter {
static const String splashView='/';
static const String homeView='/homeView';

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashView:
        return MaterialPageRoute(builder: (context)=>const SplashView());
      case homeView:
        return MaterialPageRoute(builder: (context)=> const HomeView());
    }
    return null;
  }


}
