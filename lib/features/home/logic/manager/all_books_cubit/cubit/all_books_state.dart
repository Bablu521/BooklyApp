import 'package:bookly_app/core/model/book_model/book_model.dart';

abstract class AllBooksState {}

final class AllBooksInitial extends AllBooksState {}

final class AllBooksLoading extends AllBooksState {}

final class AllBooksSuccess extends AllBooksState {
  final List<BookModel> books;
  
  AllBooksSuccess({required this.books});
}

final class AllBooksFailure extends AllBooksState {
  final String errorMsg;

  AllBooksFailure({required this.errorMsg});
}
