import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<BookModel>>> fetchAllBooks();
  Future<Either<String, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<String, List<BookModel>>> fetchOtherBooks();
}
