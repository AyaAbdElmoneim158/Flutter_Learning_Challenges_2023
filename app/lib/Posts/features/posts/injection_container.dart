import 'package:app/Posts/core/network/network_info.dart';
import 'package:app/Posts/features/posts/Data/datasource/local_data_source_post.dart';
import 'package:app/Posts/features/posts/Data/datasource/remote_data_source_post.dart';
import 'package:app/Posts/features/posts/Data/repository/post_repository_impl.dart';
import 'package:app/Posts/features/posts/Domain/repositories/post_repository.dart';
import 'package:app/Posts/features/posts/Domain/usecase/add_post_usecase.dart';
import 'package:app/Posts/features/posts/Domain/usecase/delete_post_usecase.dart';
import 'package:app/Posts/features/posts/Domain/usecase/get_post_usecase.dart';
import 'package:app/Posts/features/posts/Domain/usecase/update_post_usecase.dart';
import 'package:app/Posts/features/posts/presentation/controller/add_delete_update_post_bloc/add_delete_update_post_bloc.dart';
import 'package:app/Posts/features/posts/presentation/controller/posts_bloc/posts_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! Features - posts

// Bloc

  sl.registerFactory(() => PostsBloc(getPostsUsecase: sl()));
  sl.registerFactory(
    () => AddDeleteUpdatePostBloc(
        addPostsUsecase: sl(),
        updatePostUsecase: sl(),
        deletePostUsecase: sl()),
  );

// Usecases

  sl.registerLazySingleton(() => GetPostsUsecase(postRepository: sl()));
  sl.registerLazySingleton(() => AddPostsUsecase(postRepository: sl()));
  sl.registerLazySingleton(() => DeletePostUsecase(postRepository: sl()));
  sl.registerLazySingleton(() => UpdatePostUsecase(postRepository: sl()));

// Repository

  sl.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(
        localDataSourcePost: sl(),
        remoteDataSourcePost: sl(),
        networkInfo: sl(),
      ));

// Datasources

  sl.registerLazySingleton<RemoteDataSourcePost>(
      () => RemoteDataSourcePostImpl(client: sl()));
  sl.registerLazySingleton<LocalDataSourcePost>(
      () => LocalDataSourcePostImpl(sharedPreferences: sl()));

//! Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//! External

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
