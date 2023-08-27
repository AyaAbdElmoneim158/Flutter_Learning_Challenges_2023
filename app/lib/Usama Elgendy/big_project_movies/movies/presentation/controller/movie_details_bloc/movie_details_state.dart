// ignore_for_file: public_member_api_docs, sort_constructors_first
/*import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie_details.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/recommendation.dart';
import 'package:equatable/equatable.dart';

class MovieDetailsState extends Equatable {
  final MovieDetails? movieDetails;
  final RequestState requestStateMovieDetails;
  final String messageMovieDetails;

  final List<Recommendation> recommendationMovie;
  final RequestState requestStateRecommendationMovie;
  final String messageRecommendationMovie;

  const MovieDetailsState({
    this.movieDetails,
    this.requestStateMovieDetails = RequestState.loading,
    this.messageMovieDetails = '',
    this.recommendationMovie = const [],
    this.requestStateRecommendationMovie = RequestState.loading,
    this.messageRecommendationMovie = '',
  });

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? requestStateMovieDetails,
    String? messageMovieDetails,
    List<Recommendation>? recommendationMovie,
    RequestState? requestStateRecommendationMovie,
    String? messageRecommendationMovie,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      requestStateMovieDetails:
          requestStateMovieDetails ?? this.requestStateMovieDetails,
      messageMovieDetails: messageMovieDetails ?? this.messageMovieDetails,
      recommendationMovie: recommendationMovie ?? this.recommendationMovie,
      requestStateRecommendationMovie: requestStateRecommendationMovie ??
          this.requestStateRecommendationMovie,
      messageRecommendationMovie:
          messageRecommendationMovie ?? this.messageRecommendationMovie,
    );
  }

  @override
  List<Object?> get props {
    return [
      movieDetails,
      requestStateMovieDetails,
      messageMovieDetails,
      recommendationMovie,
      requestStateRecommendationMovie,
      messageRecommendationMovie,
    ];
  }
}*/
import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie_details.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/recommendation.dart';
import 'package:equatable/equatable.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.movieDetail,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsMessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });

  final MovieDetails? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  MovieDetailsState copyWith({
    MovieDetails? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsState,
        movieDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
      ];
}
