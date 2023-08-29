/*import 'dart:async';

import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_recommendation_movie_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_event.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUsecase getMovieDetailsUsecase;
  final GetRecommendationMovieUsecase getRecommendationMovieUsecase;

  MovieDetailsBloc(
      this.getMovieDetailsUsecase, this.getRecommendationMovieUsecase)
      : super((const MovieDetailsState())) {
    on<GetMovieDetailsEvent>(_getMovieDetails);

    on<GetRecommendationMovieEvent>(_getRecommendationMovieEvent);
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

  FutureOr<void> _getRecommendationMovieEvent(
    GetRecommendationMovieEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    final result = await getRecommendationMovieUsecase(
        RecommendationMovieParameters(movieId: event.id));

    result.fold((l) {
      emit(state.copyWith(
        requestStateRecommendationMovie: RequestState.error,
        messageRecommendationMovie: l.failureMessage,
      ));
    }, (r) {
      emit(state.copyWith(
        requestStateRecommendationMovie: RequestState.loaded,
        recommendationMovie: r,
      ));
    });
  }
}
*/

import 'dart:async';

import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_recommendation_movie_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_event.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movie_details_bloc/movie_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }

  final GetMovieDetailsUsecase getMovieDetailsUseCase;
  final GetRecommendationMovieUsecase getRecommendationUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await getMovieDetailsUseCase(MovieDetailsParameters(
      movieId: event.id,
    ));

    result.fold(
      (l) => emit(state.copyWith(
        movieDetailsState: RequestState.error,
        movieDetailsMessage: l.failureMessage,
      )),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailsState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getRecommendationUseCase(
      RecommendationMovieParameters(movieId: event.id),
    );

    result.fold(
      (l) => emit(state.copyWith(
        recommendationState: RequestState.error,
        recommendationMessage: l.failureMessage,
      )),
      (r) => emit(
        state.copyWith(
          recommendation: r,
          recommendationState: RequestState.loaded,
        ),
      ),
    );
  }
}
