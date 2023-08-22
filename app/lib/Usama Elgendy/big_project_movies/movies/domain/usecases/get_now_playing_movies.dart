import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingMovies {
  BaseMovieRepository baseMovieRepository;
  GetNowPlayingMovies({required this.baseMovieRepository});
  Future<List<Movie>> execute() async {
    return await baseMovieRepository.getNowPlayingMovies();
  }
}
