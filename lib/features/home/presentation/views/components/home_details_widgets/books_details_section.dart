import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/books_rating.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

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
                image: DecorationImage(image: AssetImage(AppAssets.test1)),
              ),
            ),
          ),
          Text("The Jungle Book", style: AppStyles.style30),
          SizedBox(height: 3),
          Text(
            "Rudyard Kipling",
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