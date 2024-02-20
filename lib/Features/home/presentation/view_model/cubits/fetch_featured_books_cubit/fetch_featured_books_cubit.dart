import 'package:books_app/Features/home/data/home_repos/home_repo_impl.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_featured_books_cubit/fetch_featured_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  final HomeRepoImpl homeRepoImpl;

  FetchFeaturedBooksCubit(this.homeRepoImpl)
      : super(FetchFeaturedBooksInitial());

  static FetchFeaturedBooksCubit getCubit(BuildContext context) =>
      BlocProvider.of(context);

  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoading());
    var result = await homeRepoImpl.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FetchFeaturedBooksFailure(failure.errorMessage));
    }, (featuredBooks) {
      emit(FetchFeaturedBooksSuccess(featuredBooks));
    });
  }
}
