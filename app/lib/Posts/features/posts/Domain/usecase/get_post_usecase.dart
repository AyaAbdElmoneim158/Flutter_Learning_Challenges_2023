// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Posts/core/error/failures.dart';
import 'package:app/Posts/features/posts/Domain/entities/post.dart';
import 'package:app/Posts/features/posts/Domain/repositories/post_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetPostsUsecase extends Equatable {
  final PostRepository postRepository;
  const GetPostsUsecase({required this.postRepository});

  Future<Either<Failure, List<Post>>> call() async {
    return await postRepository.getPosts();
  }

  @override
  List<Object> get props => [postRepository];
}
