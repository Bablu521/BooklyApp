import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<String, List<BookModel>>> fetchAllBooks() async {
    try {
      var data = await apiService.getData(
        endPoint:
            "volumes?Filtering=free-ebooks&q=flutter state mangement&startIndex=1",
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

  @override
  Future<Either<String, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.getData(endPoint: "volumes?q=dart language&startIndex=0");
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
  Future<Either<String, List<BookModel>>> fetchOtherBooks() async {
    try {
      var data = await apiService.getData(
        endPoint:
            "volumes?Filtering=free-ebooks&q=flutter widget&startIndex=22",
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
