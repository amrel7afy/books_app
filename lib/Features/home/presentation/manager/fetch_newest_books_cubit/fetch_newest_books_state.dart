part of 'fetch_newest_books_cubit.dart';


abstract class FetchNewestBooksState {}

class FetchNewestBooksInitial extends FetchNewestBooksState {}
class FetchNewestBooksLoading extends FetchNewestBooksState {}
class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<BookEntity>books;

  FetchNewestBooksSuccess(this.books);
}
class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String error;

  FetchNewestBooksFailure(this.error);
}
