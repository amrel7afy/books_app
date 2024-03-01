import 'package:bloc/bloc.dart';
import 'package:books_app/Features/search/data/search_repo/search_repo.dart';
import 'package:books_app/Features/search/presentation/view_model/cubits/search_cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo searchRepo;

  SearchCubit(this.searchRepo) : super(SearchInitial());

  Future<void> searchForAbook({required String book}) async {
    emit(SearchForAbookLoading());
    var results = await searchRepo.searchForSimilar(book: book);
    results.fold((failure) {
      emit(
        SearchForAbookFailure(
          failure.errorMessage.toString(),
        ),
      );
    }, (books) {
      emit(
        SearchForAbookSuccess(books),
      );
    });
  }
}
