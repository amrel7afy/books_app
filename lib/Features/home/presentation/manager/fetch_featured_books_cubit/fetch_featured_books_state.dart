


import '../../../domain/entities/book_entity.dart';

abstract class FetchFeaturedBooksState {}

class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}
class FetchFeaturedBooksLoading extends FetchFeaturedBooksState {}
class FetchFeaturedBooksPaginationLoading extends FetchFeaturedBooksState {}
class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState {
  final List<BookEntity>books;

  FetchFeaturedBooksSuccess(this.books);
}
class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String error;

  FetchFeaturedBooksFailure(this.error);
}
