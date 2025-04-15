import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/books_listview_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BooksListViewItem(index:index);
        },
        itemCount: 10,
      ),
    );
  }
}
