import 'package:books_app/Features/home/data/data_sources/local_data_source.dart';
import 'package:books_app/Features/home/data/data_sources/remote_data_source.dart';
import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/core/utils/errors/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      [int pageNumber = 0]) async {
    List<BookEntity> booksList;
    try {
      booksList = homeLocalDataSource.fetchFeaturedBooks(
         pageNumber,
      );
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      booksList =
      await homeRemoteDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      return right(booksList);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchNewestBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      } else {
        var remoteBooks = await homeRemoteDataSource.fetchNewestBooks();
        return right(remoteBooks);
      }
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure('Not handled error!'));
    }
  }
}
