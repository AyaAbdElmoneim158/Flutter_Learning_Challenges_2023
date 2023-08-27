import 'package:app/Usama%20Elgendy/big_project_movies/core/error/failure.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/usecase/base_use_case.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/recommendation.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRecommendationMovieUsecase
    extends BaseUseCase<List<Recommendation>, RecommendationMovieParameters> {
  final BaseMovieRepository baseMovieRepository;
  GetRecommendationMovieUsecase({required this.baseMovieRepository});

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationMovieParameters parameters) async {
    return await baseMovieRepository.getRecommendationMovie(parameters);
  }
}

class RecommendationMovieParameters extends Equatable {
  final int movieId;
  const RecommendationMovieParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
