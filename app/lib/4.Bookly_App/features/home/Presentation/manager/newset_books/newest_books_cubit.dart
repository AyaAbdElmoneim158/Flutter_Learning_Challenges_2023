import 'package:app/4.Bookly_App/features/home/data/models/book_model/book_model.dart';
import 'package:app/4.Bookly_App/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    var result = await homeRepo.getNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(errorMessage: failure.message));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
