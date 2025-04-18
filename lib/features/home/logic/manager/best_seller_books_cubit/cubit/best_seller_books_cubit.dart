import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:bookly_app/features/home/logic/manager/best_seller_books_cubit/cubit/best_seller_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  final HomeRepo homeRepo;
  BestSellerBooksCubit({required this.homeRepo})
    : super(BestSellerBooksInitial());

  getBestSellrBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (error) {
        emit(BestSellerBooksFailure(errorMsg: error));
      },
      (books) {
        emit(BestSellerBooksSuccess(books: books));
      },
    );
  }
}
