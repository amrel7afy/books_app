import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/Features/home/domain/repos/home_repo.dart';
import 'package:books_app/core/utils/constants/use_cases/no_params_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utils/errors/failure.dart';

class FetchNewestBooksUseCase implements UseCase<List<BookEntity>>{
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() async{
    return await homeRepo.fetchNewestBooks();
  }
}