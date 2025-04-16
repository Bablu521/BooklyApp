import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/other_books_item.dart';
import 'package:flutter/material.dart';

class OtherBooksListView extends StatelessWidget {
  const OtherBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return OtherBooksItem();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
