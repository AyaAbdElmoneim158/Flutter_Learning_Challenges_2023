import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';

abstract class BaseMovieRepository {
  Future<List<Movie>> getNowPlayingMovies();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRateMovies();
}
