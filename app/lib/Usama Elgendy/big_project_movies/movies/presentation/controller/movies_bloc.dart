import 'package:app/Usama%20Elgendy/big_project_movies/core/util/enums.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/repository/movies_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_events.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc({required this.getNowPlayingMoviesUseCase})
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.execute();
      debugPrint(result.toString());

      emit(const MoviesState(nowPlayingState: RequestState.loaded));
      result.fold((l) {
        emit(MoviesState(
          nowPlayingState: RequestState.error,
          message: l.failureMessage,
        ));
      }, (r) {
        emit(MoviesState(
          nowPlayingState: RequestState.loaded,
          nowPlayingMovies: r,
        ));
      });
    });
  }
}
