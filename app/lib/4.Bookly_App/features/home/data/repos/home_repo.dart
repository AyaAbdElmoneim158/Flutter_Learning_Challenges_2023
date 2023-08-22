import 'package:app/4.Bookly_App/core/errors/failures.dart';
import 'package:app/4.Bookly_App/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> getNewestBooks();
  Future<Either<Failure, List<BookModel>>> getFeatureBooks();
}
