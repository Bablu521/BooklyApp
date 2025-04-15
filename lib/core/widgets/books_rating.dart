import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.star, size: 17, color: AppColor.goldYellow),
        Text("4.8", style: AppStyles.style16),
        Text(
          "(2390)",
          style: AppStyles.style14.copyWith(
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat-Regular",
          ),
        ),
      ],
    );
  }
}
