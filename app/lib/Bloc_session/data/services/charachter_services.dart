// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Bloc_session/constants/string.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CharachterServices {
  late Dio dio;
  CharachterServices() {
    dio = Dio(BaseOptions(
      baseUrl: AppString.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
    ));
  }

  /// GetAllCharacters ---------------------------------------------------------
  Future<List<dynamic>> getAllCharacters() async {
    Response response = await dio.get(AppString.characterRoute);
    // debugPrint(response.data["info"]["count"].toString());
    // debugPrint(response.data["results"].toString());
    return response.data["results"];
  }
}
