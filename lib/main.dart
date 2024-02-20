import 'package:books_app/core/utils/AppRouter.dart';
import 'package:books_app/core/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'Features/home/presentation/view_model/cubits/bloc_observer.dart';
import 'core/utils/constants/theme.dart';
//dart fix --apply --code=unused_import
void main(){
  setupLocator();
  Bloc.observer=MyBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: themeData,
    onGenerateRoute: AppRouter().generateRoute,
  );
  }
}