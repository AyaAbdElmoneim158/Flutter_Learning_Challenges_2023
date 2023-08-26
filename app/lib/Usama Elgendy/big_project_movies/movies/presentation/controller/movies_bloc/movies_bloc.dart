import 'dart:async';

import 'package:app/Usama%20Elgendy/big_project_movies/core/usecase/base_use_case.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_top_rate_movies_usecase..dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc/movies_events.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc/movies_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRateMoviesUseCase getTopRateMoviesUseCase;

  MoviesBloc({
    required this.getNowPlayingMoviesUseCase,
    required this.getPopularMoviesUseCase,
    required this.getTopRateMoviesUseCase,
  }) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRateMoviesEvent>(_getTopRateMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
    GetNowPlayingMoviesEvent event,
    Emitter<MoviesState> emit,
  ) async {
    // BaseMovieRemoteDataSource baseMovieRemoteDataSource =
    //     MovieRemoteDataSource();
    // BaseMovieRepository baseMovieRepository = MoviesRepository(
    //     baseMovieRemoteDataSource: baseMovieRemoteDataSource);
    // GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase =
    //     GetNowPlayingMoviesUseCase(baseMovieRepository: baseMovieRepository);

    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    // debugPrint("result: GetNowPlayingMoviesEvent  ");
    // emit(state.copyWith(nowPlayingState: RequestState.loaded));

    result.fold(
        (l) => emit(state.copyWith(
              nowPlayingMessage: l.failureMessage,
              nowPlayingState: RequestState.error,
            )), (r) {
      debugPrint(
          "GetNowPlayingMoviesEvent list ${r.length} : ${state.nowPlayingMovies.length}");

      emit(state.copyWith(
        nowPlayingMovies: r,
        nowPlayingState: RequestState.loaded,
      ));
    });
  }

  FutureOr<void> _getPopularMovies(
    GetPopularMoviesEvent event,
    Emitter<MoviesState> emit,
  ) async {
    final result = await getPopularMoviesUseCase(const NoParameters());
    result.fold((l) {
      emit(state.copyWith(
        popularState: RequestState.error,
        popularMessage: l.failureMessage,
      ));
    }, (r) {
      debugPrint(
          "GetPopularMoviesEvent list ${r.length} : ${state.popularMovies.length}");

      emit(state.copyWith(
        popularState: RequestState.loaded,
        popularMovies: r,
      ));
    });
  }

  FutureOr<void> _getTopRateMovies(
    GetTopRateMoviesEvent event,
    Emitter<MoviesState> emit,
  ) async {
    final result = await getTopRateMoviesUseCase(const NoParameters());
    result.fold((l) {
      emit(state.copyWith(
        topRateState: RequestState.error,
        topRateMessage: l.failureMessage,
      ));
    }, (r) {
      debugPrint(
          "GetTopRateMoviesEvent list ${r.length} : ${state.topRateMovies.length}");
      emit(state.copyWith(
        topRateState: RequestState.loaded,
        topRateMovies: r,
      ));
    });
  }
}
