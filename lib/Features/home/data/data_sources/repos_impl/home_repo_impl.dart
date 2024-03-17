import 'package:books_app/Features/home/data/data_sources/local_data_source.dart';
import 'package:books_app/Features/home/data/data_sources/remote_data_source.dart';
import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/core/utils/constants/constants.dart';

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import '../../../domain/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(this.homeRemoteDataSource, this.homeLocalDataSource);

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchFeaturedBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }

      var remoteBooks = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(remoteBooks);
    } catch (e) {
      return left(Failure());
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
      return left(Failure());
    }
  }
}
