import 'package:bookly_app/core/model/book_model/book_model.dart';

abstract class BestSellerBooksState {}

final class BestSellerBooksInitial extends BestSellerBooksState {}

final class BestSellerBooksLoading extends BestSellerBooksState {}

final class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;

  BestSellerBooksSuccess({required this.books});
}

final class BestSellerBooksFailure extends BestSellerBooksState {
  final String errorMsg;

  BestSellerBooksFailure({required this.errorMsg});
}
