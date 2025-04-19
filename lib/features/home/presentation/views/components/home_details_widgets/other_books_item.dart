import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/logic/manager/show_other_books_cubit/cubit/show_other_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtherBooksItem extends StatelessWidget {
  final BookModel book;
  const OtherBooksItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: (){
          context.read<ShowOtherBooksCubit>().showBooks(book: book);
        },
        child: Container(
          height: 110,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(book.volumeInfo.imageLinks?.thumbnail?? "https://cdn-icons-png.flaticon.com/128/2436/2436702.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
