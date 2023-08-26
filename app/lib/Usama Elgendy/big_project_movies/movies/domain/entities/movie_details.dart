// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/genres.dart';
import 'package:equatable/equatable.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overview;
  final String releaseDate;
  final String runtime;
  final String title;
  final double voteAverage;
  const MovieDetails({
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.runtime,
    required this.title,
    required this.voteAverage,
  });

  @override
  List<Object> get props {
    return [
      backdropPath,
      id,
      overview,
      releaseDate,
      runtime,
      title,
      voteAverage,
      genres,
    ];
  }
}
