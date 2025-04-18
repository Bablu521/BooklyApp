import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService({required this.dio});

  getData({required String endPoint}) async {
    final String baseUrl = "https://www.googleapis.com/books/v1/";
    Response response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
