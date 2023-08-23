// ignore: file_names
import 'package:app/Usama%20Elgendy/big_project_movies/core/error/failure.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetTopRateMoviesUseCase {
  BaseMovieRepository baseMovieRepository;
  GetTopRateMoviesUseCase({required this.baseMovieRepository});

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getTopRateMovies();
  }
}
