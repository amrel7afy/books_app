
import 'package:books_app/core/model/book.dart';
import 'package:books_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<Book>>>fetchFeaturedBooks();
  Future<Either<Failure,List<Book>>>fetchNewestBooks();
  Future<Either<Failure,List<Book>>>fetchRelevantBooks({required String bookName});
}
