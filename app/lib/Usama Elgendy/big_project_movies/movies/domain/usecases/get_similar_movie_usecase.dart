import 'package:app/Usama%20Elgendy/big_project_movies/core/error/failure.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/usecase/base_use_case.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/recommendation.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetSimilarMovieUsecase
    extends BaseUseCase<List<Recommendation>, SimilarMovieParameters> {
  final BaseMovieRepository baseMovieRepository;
  GetSimilarMovieUsecase({required this.baseMovieRepository});

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      SimilarMovieParameters parameters) async {
    return await baseMovieRepository.getSimilarMovie(parameters);
  }
}

class SimilarMovieParameters extends Equatable {
  final int movieId;
  const SimilarMovieParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
