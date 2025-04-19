import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';

abstract class ShowOtherBooksState {}

final class ShowOtherBooksInitial extends ShowOtherBooksState {}

final class ShowOtherBooksSuccess extends ShowOtherBooksState {
  final BookModel book;

  ShowOtherBooksSuccess({required this.book});
}


