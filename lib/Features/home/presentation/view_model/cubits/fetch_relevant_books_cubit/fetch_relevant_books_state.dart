



import 'package:books_app/core/model/book.dart';

abstract class FetchRelevantBooksState {}

class FetchRelevantBooksInitial extends FetchRelevantBooksState {}
class FetchRelevantBooksLoading extends FetchRelevantBooksState {}

class FetchRelevantBooksSuccess extends FetchRelevantBooksState {
  final List<Book> relevantBooks;

  FetchRelevantBooksSuccess(this.relevantBooks);
}

class FetchRelevantBooksFailure extends FetchRelevantBooksState {
  final String errorMessage;

  FetchRelevantBooksFailure(this.errorMessage);
}