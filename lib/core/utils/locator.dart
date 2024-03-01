import 'package:books_app/Features/home/data/home_repos/home_repo_impl.dart';
import 'package:books_app/Features/search/data/search_repo/search_repo_impl.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<ApiServices>(() => ApiServices(Dio()));
  locator.registerLazySingleton<HomeRepoImpl>(
      () => HomeRepoImpl(locator<ApiServices>()));
  locator.registerLazySingleton(
      () => SearchRepoImpl(apiServices: locator<ApiServices>()));
}
