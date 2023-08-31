import 'package:app/Posts/core/error/failures.dart';
import 'package:app/Posts/core/string/failures.dart';
import 'package:app/Posts/core/string/messages.dart';
import 'package:app/Posts/features/posts/Domain/entities/post.dart';
import 'package:app/Posts/features/posts/Domain/usecase/add_post_usecase.dart';
import 'package:app/Posts/features/posts/Domain/usecase/delete_post_usecase.dart';
import 'package:app/Posts/features/posts/Domain/usecase/update_post_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'add_delete_update_post_event.dart';
part 'add_delete_update_post_state.dart';

class AddDeleteUpdatePostBloc
    extends Bloc<AddDeleteUpdatePostEvent, AddDeleteUpdatePostState> {
  final AddPostsUsecase addPostsUsecase;
  final UpdatePostUsecase updatePostUsecase;
  final DeletePostUsecase deletePostUsecase;

  AddDeleteUpdatePostBloc({
    required this.addPostsUsecase,
    required this.updatePostUsecase,
    required this.deletePostUsecase,
  }) : super(AddDeleteUpdatePostInitial()) {
    on<AddDeleteUpdatePostEvent>((event, emit) async {
      if (event is AddPostEvent) {
        emit(LoadingAddDeleteUpdatePostState());
        final result = await addPostsUsecase.call(event.post);
        resultFold(result, emit, ADD_SUCCESS_MESSAGE);
      } else if (event is UpdatePostEvent) {
        emit(LoadingAddDeleteUpdatePostState());
        final result = await updatePostUsecase.call(event.post);
        resultFold(result, emit, UPDATE_SUCCESS_MESSAGE);
      } else if (event is DeletePostEvent) {
        emit(LoadingAddDeleteUpdatePostState());
        final result = await deletePostUsecase.call(event.postId);
        resultFold(result, emit, DELETE_SUCCESS_MESSAGE);
      }
    });
  }

  void resultFold(Either<Failure, Unit> result,
      Emitter<AddDeleteUpdatePostState> emit, String message) {
    result.fold(
        (failure) => emit(
            ErrorAddDeleteUpdatePostState(message: failureMessage(failure))),
        (_) => emit(LoadedAddDeleteUpdatePostState(message: message)));
  }
}
