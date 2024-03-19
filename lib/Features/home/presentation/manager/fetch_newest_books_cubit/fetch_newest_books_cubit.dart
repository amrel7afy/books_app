import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_newest_use_case.dart';

part 'fetch_newest_books_state.dart';

abstract class NewestBooksCubitBase {
fetchNewestBooks();
}

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState>
    implements NewestBooksCubitBase {
  final FetchNewestBooksUseCase newestBooksUseCase;

  FetchNewestBooksCubit(this.newestBooksUseCase)
      : super(FetchNewestBooksInitial());

  @override
  fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    var results = await newestBooksUseCase.call();

    results.fold((failure) {
      emit(FetchNewestBooksFailure(failure.errorMessage));
      log (failure.errorMessage);
    }, (books) {
      emit(FetchNewestBooksSuccess(books));
    });
  }
}
