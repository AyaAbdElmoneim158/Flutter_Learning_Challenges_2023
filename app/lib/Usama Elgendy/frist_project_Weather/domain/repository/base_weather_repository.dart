import '../entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherWithCityName(String cityName);
}
