class ApiConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "3d5c35e51c81488b19da7c1f572507a3d";

  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now-playing?$apiKey";
  static const String popularMoviesPath = "$baseUrl/movie/popular?$apiKey";
  static const String topRatedMoviesPath = "$baseUrl/movie/top_rated?$apiKey";
}
