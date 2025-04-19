import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/logic/manager/other_books_cubit/cubit/other_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherBooksCubit extends Cubit<OtherBooksState> {
  final HomeRepo homeRepo;
  OtherBooksCubit({required this.homeRepo}) : super(OtherBooksInitial());

  getOtherBooks() async {
    emit(OtherBooksLoading());
    var result = await homeRepo.fetchOtherBooks();
    result.fold(
      (error) {
        emit(OtherBooksFailure(errorMsg: error));
      },
      (books) {
        emit(OtherBooksSuccess(books: books));
      },
    );
  }
}
