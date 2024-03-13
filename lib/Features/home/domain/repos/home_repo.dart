import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks();
}

class Failure {
}