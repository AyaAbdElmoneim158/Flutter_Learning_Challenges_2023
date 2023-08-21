import 'package:app/Usama%20Elgendy/frist_project_Weather/data/datasource/remote_data_source.dart';
import 'package:app/Usama%20Elgendy/frist_project_Weather/data/repository/weather_repository.dart';
import 'package:app/Usama%20Elgendy/frist_project_Weather/domain/entities/weather.dart';
import 'package:app/Usama%20Elgendy/frist_project_Weather/domain/repository/base_weather_repository.dart';
import 'package:app/Usama%20Elgendy/frist_project_Weather/domain/usecases/get_weather_by_city_name.dart';
import 'package:flutter/material.dart';

void main() async {
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
}
