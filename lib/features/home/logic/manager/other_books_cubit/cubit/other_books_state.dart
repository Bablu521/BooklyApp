import 'package:bookly_app/core/model/book_model/book_model.dart';

abstract class OtherBooksState {}

final class OtherBooksInitial extends OtherBooksState {}

final class OtherBooksLoading extends OtherBooksState {}

final class OtherBooksSuccess extends OtherBooksState {
  final List<BookModel> books;

  OtherBooksSuccess({required this.books});
}

final class OtherBooksFailure extends OtherBooksState {
  final String errorMsg;
  
  OtherBooksFailure({required this.errorMsg});
}
