import 'package:app/Usama%20Elgendy/big_project_movies/movies/data/model/genres_model.dart';
import 'package:app/Usama%20Elgendy/big_project_movies/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.genres,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        backdropPath: json["backdrop_path"] ?? "backdrop_path",
        genres: List<GenresModel>.from(
                json["genres"].map((x) => GenresModel.fromJson(x))) ??
            [],
        id: json["id"],
        overview: json["overview"] ?? "overview",
        releaseDate: json["release_date"] ?? "release_date",
        runtime: json["runtime"] ?? 0,
        title: json["title"] ?? "title",
        voteAverage: json["vote_average"].toDouble() ?? 0,
      );
}
