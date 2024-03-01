import 'package:books_app/core/model/book.dart';
import 'package:books_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<Book>>>searchForSimilar({required String book});
}