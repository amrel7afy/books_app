
import 'package:books_app/Features/home/data/model/book.dart';

abstract class FetchFeaturedBooksState {}

class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}

class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<Book> featuredBooks;

  FetchFeaturedBooksSuccess(this.featuredBooks);
}

class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String errorMessage;

  FetchFeaturedBooksFailure(this.errorMessage);
}
