import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/Features/home/domain/repos/home_repo.dart';
import 'package:books_app/cor e/utils/constants/use_cases/no_params_use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestUseCase implements UseCase<List<BookEntity>>{
  @override
  Future<Either<Failure, List<BookEntity>>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}