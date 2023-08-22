// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/4.Bookly_App/core/errors/failures.dart';
import 'package:app/4.Bookly_App/core/util/api_servrice.dart';
import 'package:app/4.Bookly_App/features/home/data/models/book_model/book_model.dart';
import 'package:app/4.Bookly_App/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({
    required this.apiService,
  });

  @override
  Future<Either<Failure, List<BookModel>>> getNewestBooks() async {
    try {
      var data = await apiService.get(endPoint: "volumes?q=computer science");
      List<BookModel> books = [];
      for (var element in data["Items"]) {
        books.add(BookModel.fromJson(element));
      }
      return Right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getFeatureBooks() {
    throw UnimplementedError();
  }
}
