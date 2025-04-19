import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/books_rating.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  final BookModel book;
  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Container(
            width: 165,
            height: 245,
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
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            book.volumeInfo.title ?? "Title",
            style: AppStyles.style30,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 3),
        Text(
          book.volumeInfo.authors?[0] ?? "Author",
          style: AppStyles.style18.copyWith(
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat-Medium",
          ),
        ),
        SizedBox(height: 16),
        BooksRating(),
      ],
    );
  }
}
