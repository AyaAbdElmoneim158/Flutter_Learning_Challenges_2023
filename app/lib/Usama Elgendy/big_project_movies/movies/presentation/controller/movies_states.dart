// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie.dart';
import 'package:equatable/equatable.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String message;
  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.message = '',
  });

  @override
  List<Object?> get props => [nowPlayingMovies, nowPlayingState, message];
}
