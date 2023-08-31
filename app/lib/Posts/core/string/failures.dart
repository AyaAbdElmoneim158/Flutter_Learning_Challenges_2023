import 'package:app/Posts/core/error/failures.dart';

// ignore: constant_identifier_names
const String SERVER_FAILURE_MESSAGE = 'Please try again later .';
// ignore: constant_identifier_names
const String EMPTY_CACHE_FAILURE_MESSAGE = 'No Data';
// ignore: constant_identifier_names
const String OFFLINE_FAILURE_MESSAGE = 'Please Check your Internet Connection';
// ignore: constant_identifier_names
const String UnExpectedError = "UnExpected Error, please try again later.";

String failureMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;
    case OfflineFailure:
      return OFFLINE_FAILURE_MESSAGE;
    case EmptyCacheFailure:
      return EMPTY_CACHE_FAILURE_MESSAGE;
    default:
      return UnExpectedError;
  }
}
