import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';

part 'fetch_featured_books_state.dart';

abstract class FeaturedBooksCubitBase {
  fetchFeaturedBooks();
// Future<Either<Failure,List<BookEntity>>>fetchNewestBooks();
}

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState>
    implements FeaturedBooksCubitBase {
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  FetchFeaturedBooksCubit(this.featuredBooksUseCase)
      : super(FetchFeaturedBooksInitial());

  @override
  fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());
    var results = await featuredBooksUseCase.call();

    results.fold((failure) {
      emit(FetchFeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FetchFeaturedBooksSuccess(books));
    });
  }
}
