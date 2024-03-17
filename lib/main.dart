import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';



import 'core/utils/constants/constants.dart';
import 'core/utils/constants/theme.dart';
//dart fix --apply --code=unused_import
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
   Hive.initFlutter();
   Hive.registerAdapter(BookEntityAdapter());
   await Hive.openBox<BookEntity>(kFeaturedBooksBox);
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