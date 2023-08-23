import 'package:app/Usama%20Elgendy/big_project_movies/movies/persentationt/screens/movie_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key}); //

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movie App",
      home: MovieScreen(),
    );
  }
}
/*void main() async {
  RemoteDataSource remoteDataSource = RemoteDataSource();
  BaseWeatherRepository weatherRepository =
      WeatherRepository(remoteDataSource: remoteDataSource);
  GetWeatherByCityName getWeatherByCityName =
      GetWeatherByCityName(weatherRepository: weatherRepository);
  Weather weather = await getWeatherByCityName.execute("Egypt");
  debugPrint(weather.toString());
// presentation
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(primarySwatch: Colors.green),
    darkTheme: ThemeData(primarySwatch: Colors.grey),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(weather.name, style: const TextStyle(fontSize: 24)),
            Text(weather.id.toString(), style: const TextStyle(fontSize: 24)),
            Text(weather.description, style: const TextStyle(fontSize: 24)),
            Text(weather.pressure.toString(),
                style: const TextStyle(fontSize: 24)),
            Text(weather.main, style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    ),
  ));
}*/
