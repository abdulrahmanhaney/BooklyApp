part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksIninial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFailuer extends FeaturedBooksState {
  final String errorMessage;
  const FeaturedBooksFailuer({required this.errorMessage});
}
