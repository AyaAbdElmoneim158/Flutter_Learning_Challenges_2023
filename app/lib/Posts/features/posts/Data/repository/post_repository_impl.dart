// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Posts/core/error/exceptions.dart';
import 'package:app/Posts/core/error/failures.dart';
import 'package:app/Posts/core/network/network_info.dart';
import 'package:app/Posts/features/posts/Data/datasource/local_data_source_post.dart';
import 'package:app/Posts/features/posts/Data/datasource/remote_data_source_post.dart';
import 'package:app/Posts/features/posts/Data/models/post_model.dart';
import 'package:app/Posts/features/posts/Domain/entities/post.dart';
import 'package:dartz/dartz.dart';

import '../../Domain/repositories/post_repository.dart';

class PostRepositoryImpl extends PostRepository {
  final LocalDataSourcePost localDataSourcePost;
  final RemoteDataSourcePost remoteDataSourcePost;
  final NetworkInfo networkInfo;

  PostRepositoryImpl({
    required this.localDataSourcePost,
    required this.remoteDataSourcePost,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Post>>> getPosts() async {
    if (await networkInfo.isConnected) {
      try {
        final remotePosts = await remoteDataSourcePost.getPosts();
        localDataSourcePost.cachedPosts(remotePosts);
        return Right(remotePosts);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPosts = await localDataSourcePost.getCachedPosts();
        return Right(localPosts);
      } on EmptyCacheFailure {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> addPost(Post post) async {
    PostModel postModel = PostModel(title: post.title, body: post.body);
    return await getResult(() => remoteDataSourcePost.addPost(postModel));
  }

  @override
  Future<Either<Failure, Unit>> updatePost(Post post) async {
    PostModel postModel = PostModel(title: post.title, body: post.body);
    return await getResult(() => remoteDataSourcePost.updatePost(postModel));
  }

  @override
  Future<Either<Failure, Unit>> deletePost(int postId) async {
    return await getResult(() => remoteDataSourcePost.deletePost(postId));
  }

  Future<Either<Failure, Unit>> getResult(Future<Unit> Function() fun) async {
    if (await networkInfo.isConnected) {
      try {
        await fun();
        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
