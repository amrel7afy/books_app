import 'package:books_app/Features/home/data/model/Book.dart';
import 'package:books_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<Book>>>fetchFeaturedBooks();
  Future<Either<Failure,List<Book>>>fetchBestSellerBooks();
}