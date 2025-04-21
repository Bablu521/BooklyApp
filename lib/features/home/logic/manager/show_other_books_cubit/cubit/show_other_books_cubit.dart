import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/logic/manager/show_other_books_cubit/cubit/show_other_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowOtherBooksCubit extends Cubit<ShowOtherBooksState> {
  ShowOtherBooksCubit() : super(ShowOtherBooksInitial());

  showBooks({required BookModel book}) {
    emit(ShowOtherBooksSuccess(book: book));
  }
}
