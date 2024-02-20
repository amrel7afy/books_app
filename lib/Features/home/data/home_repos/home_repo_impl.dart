import 'package:books_app/Features/home/data/home_repos/home_repo.dart';
import 'package:books_app/Features/home/data/model/Book.dart';
import 'package:books_app/core/api_service.dart';
import 'package:books_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.getData(
          endPoint:
              'Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<Book> books = [];
      for (var book in data['items']) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          SeverFailure.fromDioError(e),
        );
      }
      return left(
        SeverFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async{
    try {
      var data = await apiServices.getData(
          endPoint:
          'Filtering=free-ebooks&q=subject:programming');
      List<Book> books = [];
      for (var book in data['items']) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          SeverFailure.fromDioError(e),
        );
      }
      return left(
        SeverFailure(e.toString()),
      );
    }
  }
}
