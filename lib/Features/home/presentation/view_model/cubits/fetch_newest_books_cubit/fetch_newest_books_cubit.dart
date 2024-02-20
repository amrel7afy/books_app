import 'package:books_app/Features/home/data/home_repos/home_repo_impl.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_newest_books_cubit/fetch_newest_books_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  final HomeRepoImpl homeRepoImpl;

  FetchNewestBooksCubit(this.homeRepoImpl) : super(FetchNewestBooksInitial());

  static FetchNewestBooksCubit getCubit(BuildContext context) =>
      BlocProvider.of(context);

  Future<void> fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    var result = await homeRepoImpl.fetchNewestBooks();
    result.fold((failure) {
      emit(FetchNewestBooksFailure(failure.errorMessage));
    }, (featuredBooks) {
      emit(FetchNewestBooksSuccess(featuredBooks));
    });
  }
}
