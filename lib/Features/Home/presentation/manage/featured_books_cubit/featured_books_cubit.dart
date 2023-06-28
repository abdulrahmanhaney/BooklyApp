import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/Home/presentation/manage/featured_books_cubit/featured_books_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStatus> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksIninial());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (fail) => emit(FeaturedBooksFailuer(errorMessage: fail.errorMessage)),
        (books) => FeaturedBooksSuccess(books: books));
  }
}
