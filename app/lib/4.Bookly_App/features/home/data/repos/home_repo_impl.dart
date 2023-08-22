// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/4.Bookly_App/core/errors/failures.dart';
import 'package:app/4.Bookly_App/core/util/api_servrice.dart';
import 'package:app/4.Bookly_App/features/home/data/models/book_model/book_model.dart';
import 'package:app/4.Bookly_App/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({
    required this.apiService,
  });

  @override
  Future<Either<Failure, List<BookModel>>> getNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebook&Sorting=newest&q=Subject:computer science");
      List<BookModel> books = [];
      for (var element in data["Items"]) {
        books.add(BookModel.fromJson(element));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeatureBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebook&q=Subject:computer science");
      List<BookModel> books = [];
      for (var element in data["Items"]) {
        books.add(BookModel.fromJson(element));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
