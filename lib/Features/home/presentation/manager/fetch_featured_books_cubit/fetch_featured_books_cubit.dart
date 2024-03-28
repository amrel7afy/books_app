import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/fetch_featured_books_use_case.dart';
import 'fetch_featured_books_state.dart';



class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState>
     {
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  FetchFeaturedBooksCubit(this.featuredBooksUseCase)
      : super(FetchFeaturedBooksInitial());


  fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FetchFeaturedBooksLoading());
    } else {
      emit(FetchFeaturedBooksPaginationLoading());
    }
    var results = await featuredBooksUseCase.call(pageNumber);
    results.fold((failure) {
      emit(FetchFeaturedBooksFailure(failure.errorMessage));
      log(failure.errorMessage);
    }, (books) {
      emit(FetchFeaturedBooksSuccess(books));
    });
  }
}
