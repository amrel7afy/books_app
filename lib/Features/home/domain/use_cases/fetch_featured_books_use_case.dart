import 'package:books_app/Features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';



import '../../../../core/utils/constants/use_cases/use_case.dart';
import '../../../../core/utils/errors/failure.dart';
import '../entities/book_entity.dart';

//واحد بيستقبل قيمة  usecases  عندك اتنين 
class FetchFeaturedBooksUseCase implements UseCase <List<BookEntity>,int>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int pageNumber=0]) async{
    return await homeRepo.fetchFeaturedBooks(pageNumber);
  }

}





