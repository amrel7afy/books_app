part of 'fetch_featured_books_cubit.dart';


abstract class FetchFeaturedBooksState {}

class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}
class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}
class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<BookEntity>books;

  FetchFeaturedBooksSuccess(this.books);
}
class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String error;

  FetchFeaturedBooksFailure(this.error);
}
