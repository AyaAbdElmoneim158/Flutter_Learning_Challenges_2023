import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/repository/movies_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///* Bloc
    sl.registerFactory(() => MoviesBloc(getNowPlayingMoviesUseCase: sl()));

    ///* usecase
    sl.registerLazySingleton(
        () => GetNowPlayingMoviesUseCase(baseMovieRepository: sl()));

    ///* Repository
    sl.registerLazySingleton<BaseMovieRepository>(
        () => MoviesRepository(baseMovieRemoteDataSource: sl()));

    ///* Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
