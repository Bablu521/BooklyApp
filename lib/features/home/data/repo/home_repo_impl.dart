import 'package:bookly_app/core/network/api_service.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<String, List<BookModel>>> fetchAllBooks() async {
    try {
      var data = await ApiService(
        dio: Dio(),
      ).getData(endPoint: "volumes?Filtering=free-ebooks&q=subject:general");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await ApiService(dio: Dio()).getData(
        endPoint:
            "volumes?Filtering=free-ebooks&q=subject:general&Sorting=Sorting",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
    }
  }
}
