// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure({
    required this.message,
  });
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection timeout error!");
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Connection sendTimeout error!");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Connection receiveTimeout error!");

      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Connection receiveTimeout error!");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            error.response!.statusCode!, error.response!.statusCode);

      case DioExceptionType.cancel:
        return ServerFailure(message: "Request canceled!");

      case DioExceptionType.connectionError:
        return ServerFailure(message: "Connection connectionError error!");

      case DioExceptionType.unknown:
        if (error.message!.contains("SocketException")) {
          return ServerFailure(message: "No Internet connection");
        }
        return ServerFailure(message: "Unexpected error, please try again");
      default:
        return ServerFailure(
            message: "Oops There was an error, please try again later");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(message: "Not found! try again later!");
    } else if (statusCode == 500) {
      return ServerFailure(
          message: "Internal Server Error, please try again later");
    } else {
      return ServerFailure(
          message: "Oops There was an error, please try again later");
    }
  }
}
