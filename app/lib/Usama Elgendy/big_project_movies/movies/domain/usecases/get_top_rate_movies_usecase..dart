// ignore_for_file: file_names
import 'package:app/Usama%20Elgendy/big_project_movies/core/error/failure.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/usecase/base_use_case.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetTopRateMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  BaseMovieRepository baseMovieRepository;
  GetTopRateMoviesUseCase({required this.baseMovieRepository});

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async =>
      await baseMovieRepository.getTopRateMovies();
}
