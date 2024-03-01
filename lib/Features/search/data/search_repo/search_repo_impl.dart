import 'dart:developer';

import 'package:books_app/core/model/book.dart';
import 'package:books_app/Features/search/data/search_repo/search_repo.dart';
import 'package:books_app/core/errors/failure.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<Book>>> searchForSimilar({required String book}) async{
    try {
      var data = await apiServices.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=$book');
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
}
