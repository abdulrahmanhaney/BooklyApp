import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksIninial());

  final HomeRepo homeRepo;

  Future<void> getFeatuerdBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
        (fail) => emit(FeaturedBooksFailuer(errorMessage: fail.errorMessage)),
        (books) => FeaturedBooksSuccess(books: books));
  }
}
