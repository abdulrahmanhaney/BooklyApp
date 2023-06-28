import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStatus {}

class FeaturedBooksIninial extends FeaturedBooksStatus {}

class FeaturedBooksLoading extends FeaturedBooksStatus {}

class FeaturedBooksSuccess extends FeaturedBooksStatus {
  final List<BookModel> books;
  FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFailuer extends FeaturedBooksStatus {
  final String errorMessage;
  FeaturedBooksFailuer({required this.errorMessage});
}
