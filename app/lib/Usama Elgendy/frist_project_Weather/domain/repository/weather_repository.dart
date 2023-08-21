import '../entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherWithCityName(String cityName);
}
