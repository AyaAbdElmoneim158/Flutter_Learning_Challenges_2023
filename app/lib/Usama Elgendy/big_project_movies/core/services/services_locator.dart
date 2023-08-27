import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/repository/movies_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_recommendation_movie_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_top_rate_movies_usecase..dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_bloc.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///* Bloc:> MoviesBloc
    sl.registerFactory(() => MoviesBloc(
          getNowPlayingMoviesUseCase: sl(),
          getPopularMoviesUseCase: sl(),
          getTopRateMoviesUseCase: sl(),
        ));

    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    ///* usecase:> GetRecommendationMovieUsecase
    sl.registerLazySingleton(
        () => GetRecommendationMovieUsecase(baseMovieRepository: sl()));

    ///* usecase:> GetMovieDetailsUsecase
    sl.registerLazySingleton(
        () => GetMovieDetailsUsecase(baseMovieRepository: sl()));

    ///* usecase:> NowPlayingMovies
    sl.registerLazySingleton(
        () => GetNowPlayingMoviesUseCase(baseMovieRepository: sl()));

    ///* usecase:> PopularMovies
    sl.registerLazySingleton(
        () => GetPopularMoviesUseCase(baseMovieRepository: sl()));

    ///* usecase:> TopRateMovies
    sl.registerLazySingleton(
        () => GetTopRateMoviesUseCase(baseMovieRepository: sl()));

    ///* Repository
    sl.registerLazySingleton<BaseMovieRepository>(
        () => MoviesRepository(baseMovieRemoteDataSource: sl()));

    ///* Data source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
