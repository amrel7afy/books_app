import 'package:books_app/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/home/data/data_sources/local_data_source.dart';
import '../../Features/home/data/data_sources/remote_data_source.dart';
import '../../Features/home/data/data_sources/repos_impl/home_repo_impl.dart';
import '../../Features/home/domain/use_cases/fetch_newest_use_case.dart';
import 'constants/api_service.dart';

GetIt locator = GetIt.instance;

setUpLocator() {
  locator.registerLazySingleton<ApiServices>(() => ApiServices(Dio()));
  locator.registerLazySingleton<FetchFeaturedBooksUseCase>(
      () => FetchFeaturedBooksUseCase(
            HomeRepoImpl(
              HomeRemoteDataSourceImpl(locator<ApiServices>()),
              HomeLocalDataSourceImpl(),
            ),
          ));
  locator.registerLazySingleton<FetchNewestBooksUseCase>(
      () => FetchNewestBooksUseCase(
            HomeRepoImpl(
              HomeRemoteDataSourceImpl(locator<ApiServices>()),
              HomeLocalDataSourceImpl(),
            ),
          ));
}
