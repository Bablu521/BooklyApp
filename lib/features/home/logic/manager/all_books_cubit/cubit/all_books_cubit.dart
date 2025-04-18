import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/logic/manager/all_books_cubit/cubit/all_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  final HomeRepo homeRepo;
  AllBooksCubit({required this.homeRepo}) : super(AllBooksInitial());

  getAllBooks() async {
    emit(AllBooksLoading());
    var result = await homeRepo.fetchAllBooks();
    result.fold(
      (error) {
        emit(AllBooksFailure(errorMsg: error));
      },
      (books) {
        emit(AllBooksSuccess(books: books));
      },
    );
  }
}
