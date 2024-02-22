
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_relevant_books_cubit/fetch_relevant_books_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../data/home_repos/home_repo.dart';




class FetchRelevantBooksCubit extends Cubit<FetchRelevantBooksState> {
  final HomeRepo homeRepo;
  FetchRelevantBooksCubit(this.homeRepo) : super(FetchRelevantBooksInitial());
  static FetchRelevantBooksCubit getCubit(BuildContext context) =>
      BlocProvider.of(context);

  Future<void> fetchRelevantBooks() async {
    emit(FetchRelevantBooksLoading());
    var result = await homeRepo.fetchRelevantBooks();
    result.fold((failure) {
      emit(FetchRelevantBooksFailure(failure.errorMessage));
    }, (featuredBooks) {
      emit(FetchRelevantBooksSuccess(featuredBooks));
    });
  }

}
