import 'package:app/Usama%20Elgendy/big_project_movies/core/error/failure.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/usecase/base_use_case.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:dartz/dartz.dart';

class GetSimilarMovieUsecase
    extends BaseUseCase<List<Movie>, MovieDetailsParameters> {
  final BaseMovieRepository baseMovieRepository;
  GetSimilarMovieUsecase({required this.baseMovieRepository});

  @override
  Future<Either<Failure, List<Movie>>> call(
      MovieDetailsParameters parameters) async {
    return await baseMovieRepository.getSimilarMovie(parameters);
  }
}
