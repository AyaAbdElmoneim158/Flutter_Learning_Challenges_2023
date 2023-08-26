import 'dart:async';

import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_similar_movie_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_event.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUsecase getMovieDetailsUsecase;
  final GetSimilarMovieUsecase getSimilarMovieUsecase;

  MovieDetailsBloc(this.getMovieDetailsUsecase, this.getSimilarMovieUsecase)
      : super((const MovieDetailsState())) {
    on<GetMovieDetailsEvent>(_getMovieDetails);

    on<GetSimilarMovieEvent>(_getSimilarMovieEvent);
  }

  FutureOr<void> _getMovieDetails(
    GetMovieDetailsEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    final result =
        await getMovieDetailsUsecase(MovieDetailsParameters(movieId: event.id));

    result.fold((l) {
      emit(state.copyWith(
        requestStateMovieDetails: RequestState.error,
        messageMovieDetails: l.failureMessage,
      ));
    }, (r) {
      emit(state.copyWith(
        requestStateMovieDetails: RequestState.loaded,
        movieDetails: r,
      ));
    });
  }

  FutureOr<void> _getSimilarMovieEvent(
    GetSimilarMovieEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    final result =
        await getSimilarMovieUsecase(SimilarMovieParameters(movieId: event.id));

    result.fold((l) {
      emit(state.copyWith(
        requestStateSimilarMovie: RequestState.error,
        messageSimilarMovie: l.failureMessage,
      ));
    }, (r) {
      emit(state.copyWith(
        requestStateSimilarMovie: RequestState.loaded,
        similarMovie: r,
      ));
    });
  }
}
