import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_newest_books_cubit/fetch_newest_books_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/home_repos/home_repo.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  final HomeRepo homeRepo;

  FetchNewestBooksCubit(this.homeRepo) : super(FetchNewestBooksInitial());

  static FetchNewestBooksCubit getCubit(BuildContext context) =>
      BlocProvider.of(context);

  Future<void> fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(FetchNewestBooksFailure(failure.errorMessage));
    }, (featuredBooks) {
      emit(FetchNewestBooksSuccess(featuredBooks));
    });
  }
}
