import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  final int index;
  const BooksListViewItem({super.key , required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: index==0 ? 150 : 130,
        height: index==0? 225 : 195,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: DecorationImage(image: AssetImage(AppAssets.test1)),
        ),
      ),
    );
  }
}
