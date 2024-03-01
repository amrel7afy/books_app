import '../../../../../../core/model/book.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}


class SearchForAbookInitial extends SearchState {}

class SearchForAbookLoading extends SearchState {}

class SearchForAbookSuccess extends SearchState {
  final List<Book> searchedBooks;

  SearchForAbookSuccess(this.searchedBooks);
}

class SearchForAbookFailure extends SearchState {
  final String errorMessage;

  SearchForAbookFailure(this.errorMessage);
}
