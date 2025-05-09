import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<String,List<BookModel>>> fetchSearchedBooks({required String searchKey});
}
