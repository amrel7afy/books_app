


import 'package:books_app/Features/home/data/model/book.dart';

abstract class FetchNewestBooksState {}

class FetchNewestBooksInitial extends FetchNewestBooksState {}
class FetchNewestBooksLoading extends FetchNewestBooksState {}

class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<Book> newestBooks;

  FetchNewestBooksSuccess(this.newestBooks);
}

class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String errorMessage;

  FetchNewestBooksFailure(this.errorMessage);
}