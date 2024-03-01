import 'dart:developer';

import 'package:books_app/Features/home/data/home_repos/home_repo.dart';
import 'package:books_app/core/model/book.dart';

import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async{
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=subject:programming');
      log('hello');
      List<Book> books = [];
      for (var book in data['items']) {
        books.add(Book.fromJson(book));
      }
      return right(books);
    } catch (e) {

      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );

    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest');
      List<Book> books = [];
      for (var book in data['items']) {
        books.add(Book.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }


  @override
  Future<Either<Failure, List<Book>>> fetchRelevantBooks({required String bookName}) async{
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=$bookName&Sorting=relevance');

      List<Book> books = [];
      for (var book in data['items']) {
        books.add(Book.fromJson(book));
      }
      return right(books);
    } catch (e) {

      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );

    }
  }
}
