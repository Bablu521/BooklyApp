import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<String, List<BookModel>>> fetchSearchedBooks({
    required String searchKey,
  }) async {
    try {
      var data = await ApiService(
        dio: Dio(),
      ).getData(endPoint: "volumes?q=$searchKey");
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
