import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/custom_home_details_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/books_details_preview.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/other_books_listview.dart';
import 'package:flutter/material.dart';

class HomeDetailsBody extends StatelessWidget {
  const HomeDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomHomeDetailsAppbar(),
          BooksDetailsSection(),
          SizedBox(height: 30),
          BooksDetailsPreview(),
          SizedBox(height: 45),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: AppStyles.style14.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 15),
          OtherBooksListView(),
          SizedBox(height: 35,)
        ],
      ),
    );
  }
}
