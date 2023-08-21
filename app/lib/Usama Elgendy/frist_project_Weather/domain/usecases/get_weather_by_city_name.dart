// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../entities/weather.dart';
import '../repository/weather_repository.dart';

class GetWeatherByCityName {
  final WeatherRepository weatherRepository;
  GetWeatherByCityName({
    required this.weatherRepository,
  });
  Future<Weather> execute(String cityName) async {
    // cityName:> get from presentation
    return await weatherRepository.getWeatherWithCityName(cityName);
  }
}