import 'package:books_app/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';


import 'core/utils/constants/theme.dart';

void main(){
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget{
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
    theme: themeData,
    onGenerateRoute: AppRouter().generateRoute,
  );
  }
}