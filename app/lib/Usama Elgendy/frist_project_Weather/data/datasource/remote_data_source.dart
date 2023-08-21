import 'package:flutter/material.dart';

import '../../core/constants.dart';

import '../models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherWithCityName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherWithCityName(String cityName) async {
    try {
      Response res = await Dio().get(
          "${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.apiKey}");
      debugPrint(res.toString());
      return WeatherModel.fromJSON(res.data);
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
