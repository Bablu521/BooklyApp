import 'package:bookly_app/features/home/logic/manager/other_books_cubit/cubit/other_books_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/other_books_cubit/cubit/other_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/other_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherBooksListView extends StatelessWidget {
  const OtherBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: 110,
        child: BlocBuilder<OtherBooksCubit, OtherBooksState>(
          builder: (context, state) {
            if (state is OtherBooksSuccess) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return OtherBooksItem(book : state.books[index]);
                },
                itemCount: state.books.length,
              );
            } else if (state is OtherBooksFailure) {
              return Center(child: Text("An Error Occured : ${state.errorMsg}"));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
