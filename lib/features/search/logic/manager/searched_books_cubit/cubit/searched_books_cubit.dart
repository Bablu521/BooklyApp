import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:bookly_app/features/search/logic/manager/searched_books_cubit/cubit/searched_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchedBooksCubit extends Cubit<SearchedBooksState> {
  final SearchRepo searchRepo;
  SearchedBooksCubit({required this.searchRepo})
    : super(SearchedBooksInitial());

  getSearchedBooks({required String searchKey}) async {
    emit(SearchedBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(searchKey: searchKey);
    result.fold(
      (error) {
        emit(SearchedBooksFailure(errorMsg: error));
      },
      (books) {
        emit(SearchedBooksSuccess(books: books));
      },
    );
  }
}
