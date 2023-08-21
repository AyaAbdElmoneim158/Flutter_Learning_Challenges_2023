import '../../domain/entities/weather.dart';
import '../../data/datasource/remote_data_source.dart';
import '../../domain/repository/base_weather_repository.dart';

class WeatherRepository extends BaseWeatherRepository {
  RemoteDataSource remoteDataSource;
  WeatherRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Weather> getWeatherWithCityName(String cityName) async {
    return (await remoteDataSource.getWeatherWithCityName(cityName))!;
  }
}
