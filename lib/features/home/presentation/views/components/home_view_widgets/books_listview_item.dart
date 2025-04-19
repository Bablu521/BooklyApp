import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  final BookModel book;
  final int index;
  const BooksListViewItem({super.key, required this.index, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRouter.homeDetailsView , arguments: book);
        },
        child:Align(
          alignment: Alignment.center, // Align shorter items to bottom
          child: Container(
          width: index == 0 ? 150 : 130,
          height: index == 0 ? 225 : 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(
                book.volumeInfo.imageLinks?.thumbnail ?? "",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),)
    );
  }
}
