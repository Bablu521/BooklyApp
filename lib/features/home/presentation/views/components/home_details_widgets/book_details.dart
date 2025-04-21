import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/logic/manager/show_other_books_cubit/cubit/show_other_books_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/show_other_books_cubit/cubit/show_other_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/book_details_preview.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/book_details_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowOtherBooksCubit, ShowOtherBooksState>(
      builder: (context, state) {
        final BookModel usedBook =
            state is ShowOtherBooksSuccess ? state.book : book;
      return Column(
            children: [
              BookDetailsSection(book: usedBook),
              SizedBox(height: 30),
              BookDetailsPreview(book: usedBook),
            ],
          );
      },
    );
  }
}
