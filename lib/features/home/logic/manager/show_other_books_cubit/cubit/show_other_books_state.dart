import 'package:bookly_app/core/model/book_model/book_model.dart';

abstract class ShowOtherBooksState {}

final class ShowOtherBooksInitial extends ShowOtherBooksState {}

final class ShowOtherBooksSuccess extends ShowOtherBooksState {
  final BookModel book;

  ShowOtherBooksSuccess({required this.book});
}


