import 'package:bookly_app/core/model/book_model/book_model.dart';

abstract class SearchedBooksState {}

final class SearchedBooksInitial extends SearchedBooksState {}

final class SearchedBooksLoading extends SearchedBooksState {}

final class SearchedBooksSuccess extends SearchedBooksState {
  final List<BookModel>books;
  SearchedBooksSuccess({required this.books});
}

final class SearchedBooksFailure extends SearchedBooksState {
  final String errorMsg;

  SearchedBooksFailure({required this.errorMsg});
}
