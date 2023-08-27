import 'package:app/Usama%20Elgendy/big_project_movies/core/services/services_locator.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/components/now_playing_movies_component.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/components/popular_movies_component.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/components/top_rate_movies_component.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc/movies_bloc.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc/movies_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build:> MainMoviesScreen ");
    // BaseMovieRemoteDataSource baseMovieRemoteDataSource =
    //     MovieRemoteDataSource();
    // BaseMovieRepository baseMovieRepository =
    //     MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);
    // GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase =
    //     GetNowPlayingMoviesUseCase(baseMovieRepository: baseMovieRepository);

    return BlocProvider(
      create: (context) =>
          // MoviesBloc(getNowPlayingMoviesUseCase: getNowPlayingMoviesUseCase),
          sl<MoviesBloc>()
            // MoviesBloc(getNowPlayingMoviesUseCase: sl())
            ..add(GetNowPlayingMoviesEvent())
            ..add(GetPopularMoviesEvent())
            ..add(GetTopRateMoviesEvent()),
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NowPlayingMoviesComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'See More',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const PopularMoviesComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(
                  16.0,
                  24.0,
                  16.0,
                  8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.15,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'See More',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const TopRateMoviesComponent(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
/*
!....................................................
import 'package:app/Usama%20Elgendy/big_project_movies/core/services/services_locator.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_bloc.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/presentation/controller/movies_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesBloc(getNowPlayingMoviesUseCase: sl())
        ..add(GetNowPlayingMoviesEvent()),
      child: const Scaffold(),
    );
  }
}
*/

/*
// !....................................................

import 'package:app/Usama%20Elgendy/big_project_movies/core/usecase/base_use_case.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/repository/movies_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/repository/base_movie_repository.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/usecases/get_Recommendation_movie_usecase.dart';
import 'package:flutter/material.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    debugPrint("Build:> MainMoviesScreen ");
    BaseMovieRemoteDataSource baseMovieRemoteDataSource =
        MovieRemoteDataSource();
    BaseMovieRepository baseMovieRepository =
        MoviesRepository(baseMovieRemoteDataSource: baseMovieRemoteDataSource);

    // GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase =
    //     GetNowPlayingMoviesUseCase(baseMovieRepository: baseMovieRepository);

    debugPrint("1");
    // var result = await GetNowPlayingMoviesUseCase(baseMovieRepository: baseMovieRepository).call(const NoParameters());
    // GetMovieDetailsUsecase
    var result =
        await GetRecommendationMovieUsecase(baseMovieRepository: baseMovieRepository)
            .call(const RecommendationMovieParameters(movieId: 976573));
    // await GetMovieDetailsUsecase(baseMovieRepository: baseMovieRepository).call(const MovieDetailsUseCase(movieId: 332150));

    debugPrint("2");

    result.fold(
      (l) => debugPrint(l.failureMessage),
      (r) {
        debugPrint(r.length.toString()); //:> Menelik
        // for (var element in r) {
        //   debugPrint(element.title);
        // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}*/
