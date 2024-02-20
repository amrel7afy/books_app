
import 'dart:developer';

import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_featured_books_cubit/fetch_featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/home_repos/home_repo.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksCubit(this.homeRepo)
      : super(FetchFeaturedBooksInitial());

  static FetchFeaturedBooksCubit getCubit(BuildContext context) =>
      BlocProvider.of(context);

  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      log(failure.errorMessage);
      emit(FetchFeaturedBooksFailure(failure.errorMessage));
    }, (featuredBooks) {
      emit(FetchFeaturedBooksSuccess(featuredBooks));
    });
  }
}
