import 'package:app/Usama%20Elgendy/big_project_movies/core/error/exceptions.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/network/api_constants.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/network/error_message_model.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/model/movie_model.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<Movie>> getNowPlayingMovies();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRateMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<Movie>> getNowPlayingMovies() async {
    Response response = await Dio().get(ApiConstants.nowPlayingMoviesPath);

    // ignore: unrelated_type_equality_checks
    if (response.statusMessage == 200) {
      return List<MovieModel>.from(((response.data["results"]) as List).map(
          (e) => MovieModel.fromJson(
              e))); // :> list.form -> Creates a list containing all elements.
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<Movie>> getPopularMovies() async {
    Response response = await Dio().get(ApiConstants.popularMoviesPath);

    // ignore: unrelated_type_equality_checks
    if (response.statusMessage == 200) {
      return List<MovieModel>.from(((response.data["results"]) as List).map(
          (e) => MovieModel.fromJson(
              e))); // :> list.form -> Creates a list containing all elements.
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<Movie>> getTopRateMovies() async {
    Response response = await Dio().get(ApiConstants.topRatedMoviesPath);

    // ignore: unrelated_type_equality_checks
    if (response.statusMessage == 200) {
      return List<MovieModel>.from(((response.data["results"]) as List).map(
          (e) => MovieModel.fromJson(
              e))); // :> list.form -> Creates a list containing all elements.
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
