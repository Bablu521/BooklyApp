import 'package:bookly_app/core/widgets/best_seller_item.dart';
import 'package:bookly_app/features/search/logic/manager/searched_books_cubit/cubit/searched_books_cubit.dart';
import 'package:bookly_app/features/search/logic/manager/searched_books_cubit/cubit/searched_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedBooksCubit, SearchedBooksState>(
      builder: (context, state) {
        if (state is SearchedBooksSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return BestSellerItem(book: state.books[index]);
            },
            itemCount: state.books.length,
          );
        } else if (state is SearchedBooksFailure) {
          return Center(child: Text("An Error Occured : ${state.errorMsg}"));
        } else if (state is SearchedBooksLoading) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Center(child: SizedBox());
        }
      },
    );
  }
}
