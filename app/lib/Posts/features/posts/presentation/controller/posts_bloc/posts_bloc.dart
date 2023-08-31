import 'package:app/Posts/core/string/failures.dart';
import 'package:app/Posts/features/posts/Domain/entities/post.dart';
import 'package:app/Posts/features/posts/Domain/usecase/get_post_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetPostsUsecase getPostsUsecase;
  PostsBloc({required this.getPostsUsecase}) : super(PostsInitial()) {
    on<PostsEvent>((event, emit) async {
      if (event is GetPostsEvent || event is RefreshPostsEvent) {
        await getEvent(emit);
      }
    });
  }

  Future<void> getEvent(Emitter<PostsState> emit) async {
    emit(LoadingPostsState());
    final result = await getPostsUsecase.call();
    result.fold(
      (failure) => emit(ErrorPostsState(message: failureMessage(failure))),
      (posts) => emit(
        LoadedPostsState(posts: posts),
      ),
    );
  }
}
