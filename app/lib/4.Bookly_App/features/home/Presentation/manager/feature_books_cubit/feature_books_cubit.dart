import 'package:app/4.Bookly_App/features/home/data/models/book_model/book_model.dart';
import 'package:app/4.Bookly_App/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit({required this.homeRepo}) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    var result = await homeRepo.getFeatureBooks();
    result.fold((failure) {
      emit(FeatureBooksFailure(errorMessage: failure.message));
    }, (books) {
      emit(FeatureBooksSuccess(books: books));
    });
  }
}
