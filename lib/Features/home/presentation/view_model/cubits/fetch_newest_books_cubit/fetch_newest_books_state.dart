

import 'package:books_app/Features/home/data/model/Book.dart';

abstract class FetchNewestBooksState {}

class FetchNewestBooksInitial extends FetchNewestBooksState {}
class FetchNewestBooksLoading extends FetchNewestBooksState {}

class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<Book> featuredBooks;

  FetchNewestBooksSuccess(this.featuredBooks);
}

class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String errorMessage;

  FetchNewestBooksFailure(this.errorMessage);
}