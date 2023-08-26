// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie_details.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/recommendation.dart';
import 'package:equatable/equatable.dart';

class MovieDetailsState extends Equatable {
  final MovieDetails? movieDetails;
  final RequestState requestStateMovieDetails;
  final String messageMovieDetails;

  final List<Recommendation> similarMovie;
  final RequestState requestStateSimilarMovie;
  final String messageSimilarMovie;

  const MovieDetailsState({
    this.movieDetails,
    this.requestStateMovieDetails = RequestState.loading,
    this.messageMovieDetails = '',
    this.similarMovie = const [],
    this.requestStateSimilarMovie = RequestState.loading,
    this.messageSimilarMovie = '',
  });

  @override
  List<Object> get props => [
        movieDetails!,
        requestStateMovieDetails,
        messageMovieDetails,
        similarMovie,
        requestStateSimilarMovie,
        messageSimilarMovie,
      ];

  MovieDetailsState copyWith({
    MovieDetails? movieDetails,
    RequestState? requestStateMovieDetails,
    String? messageMovieDetails,
    List<Recommendation>? similarMovie,
    RequestState? requestStateSimilarMovie,
    String? messageSimilarMovie,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      requestStateMovieDetails:
          requestStateMovieDetails ?? this.requestStateMovieDetails,
      messageMovieDetails: messageMovieDetails ?? this.messageMovieDetails,
      similarMovie: similarMovie ?? this.similarMovie,
      requestStateSimilarMovie:
          requestStateSimilarMovie ?? this.requestStateSimilarMovie,
      messageSimilarMovie: messageSimilarMovie ?? this.messageSimilarMovie,
    );
  }
}
