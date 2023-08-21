import '../../domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.id,
    required super.name,
    required super.main,
    required super.description,
    required super.pressure,
  });

  factory WeatherModel.fromJSON(Map<String, dynamic> json) {
    return WeatherModel(
        id: json["id"],
        name: json['name'],
        main: json["weather"][0]["main"],
        description: json["weather"][0]["description"],
        pressure: json["main"]["pressure"]);
  }
}
