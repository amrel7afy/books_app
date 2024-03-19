import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/core/utils/AppRouter.dart';
import 'package:books_app/core/utils/bloc_observer.dart';
import 'package:books_app/core/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/constants/constants.dart';
import 'core/utils/constants/theme.dart';

//dart fix --apply --code=unused_import
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(BookEntityAdapter());
  Bloc.observer = MyBlocObserver();
  setUpLocator();

  await Hive.initFlutter();
  await Hive.openBox<BookEntity>(kFeaturedBooksBox);
  await Hive.openBox<BookEntity>(kNewestBooksBox);

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
