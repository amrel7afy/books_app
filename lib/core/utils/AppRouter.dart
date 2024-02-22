import 'package:books_app/Features/home/data/home_repos/home_repo_impl.dart';
import 'package:books_app/Features/home/presentation/view/book_details_view.dart';
import 'package:books_app/Features/home/presentation/view/home_view.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_newest_books_cubit/fetch_newest_books_cubit.dart';
import 'package:books_app/Features/search/presentation/view/search_view.dart';
import 'package:books_app/Features/splash/presentation/view/splash_view.dart';
import 'package:books_app/core/utils/locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Features/home/presentation/view_model/cubits/fetch_relevant_books_cubit/fetch_relevant_books_cubit.dart';

class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashView:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case homeView:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(providers: [
                  BlocProvider(
                    create: (context) =>
                        FetchFeaturedBooksCubit(locator<HomeRepoImpl>())..fetchFeaturedBooks(),
                  ),
                  BlocProvider(
                    create: (context) =>
                        FetchNewestBooksCubit(locator<HomeRepoImpl>())..fetchNewestBooks(),
                  ),
                ], child: const HomeView()));
      case bookDetailsView:
        return MaterialPageRoute(builder: (context) => BlocProvider(
          create: (context) =>FetchRelevantBooksCubit(locator<HomeRepoImpl>()),
             child: const BookDetailsView()

        ));
      case searchView:
        return MaterialPageRoute(builder: (context) => const SearchView());
    }
    return null;
  }
}
