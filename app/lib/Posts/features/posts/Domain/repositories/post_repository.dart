import 'package:app/Posts/core/error/failures.dart';
import 'package:app/Posts/features/posts/Domain/entities/post.dart';
import 'package:dartz/dartz.dart';

abstract class PostRepository {
  Future<Either<Failure, List<Post>>> getPosts();
  Future<Either<Failure, Unit>> addPost(Post post);
  Future<Either<Failure, Unit>> updatePost(Post post);
  Future<Either<Failure, Unit>> deletePost(int postId);
}
