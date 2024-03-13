import 'package:books_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';



import '../../../../core/utils/constants/use_cases/no_params_use_case.dart';
import '../entities/book_entity.dart';
//واحد بيستقبل قيمة  usecases  عندك اتنين 
class FetchFeaturedBooksUseCase implements UseCase <List<BookEntity>>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }




 


}

/*

class FetchFeaturedBooksUseCase implements UseCase <List<BookEntity>,String>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call(String param) {
    // TODO: implement call
    throw UnimplementedError();
  }




}
*/



