import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/repository/movies_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    BaseMovieRepository baseMovieRepository =
        MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
    GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase =
        GetNowPlayingMoviesUseCase(baseMovieRepository: baseMovieRepository);
    final res = await getNowPlayingMoviesUseCase.execute();
    res.fold(
      (l) {},
      (r) {},
    );
    debugPrint(res.toString());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("MovieScreen"),
    );
  }
}
