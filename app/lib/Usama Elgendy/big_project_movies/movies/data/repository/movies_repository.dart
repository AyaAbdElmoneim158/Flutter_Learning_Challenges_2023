// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Usama%20Elgendy/big_project_movies/core/error/exceptions.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/error/failure.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie_details.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:dartz/dartz.dart';

class MoviesRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository({required this.baseMovieRemoteDataSource});

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    try {
      final res = await baseMovieRemoteDataSource.getNowPlayingMovies();
      return Right(res);
    } on ServerException catch (failure) {
      return left(ServerFailure(
          failureMessage: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final res = await baseMovieRemoteDataSource.getPopularMovies();
      return Right(res);
    } on ServerException catch (failure) {
      return left(ServerFailure(
          failureMessage: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRateMovies() async {
    try {
      final res = await baseMovieRemoteDataSource.getTopRateMovies();
      return Right(res);
    } on ServerException catch (failure) {
      return left(ServerFailure(
          failureMessage: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    try {
      final res = await baseMovieRemoteDataSource.getMovieDetails(parameters);
      return Right(res);
    } on ServerException catch (failure) {
      return left(ServerFailure(
          failureMessage: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getSimilarMovie(
      MovieDetailsParameters parameters) async {
    try {
      final res = await baseMovieRemoteDataSource.getSimilarMovie(parameters);
      return Right(res);
    } on ServerException catch (failure) {
      return left(ServerFailure(
          failureMessage: failure.errorMessageModel.statusMessage));
    }
  }
}
