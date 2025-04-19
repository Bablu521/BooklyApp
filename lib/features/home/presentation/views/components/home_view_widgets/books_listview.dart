import 'package:bookly_app/features/home/logic/manager/all_books_cubit/cubit/all_books_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/all_books_cubit/cubit/all_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: BlocBuilder<AllBooksCubit, AllBooksState>(
        builder: (context, state) {
          if (state is AllBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BooksListViewItem(index: index , book: state.books[index],);
              },
              itemCount: state.books.length,
            );
          } else if (state is AllBooksFailure) {
            return Center(
              child: Text("An Error Occured : ${state.errorMsg}"),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
