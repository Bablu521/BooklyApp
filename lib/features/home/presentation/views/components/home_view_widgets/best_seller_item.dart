import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/books_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 45),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.test2),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire",
                    style: AppStyles.style20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("J.K. Rowling", style: AppStyles.style14),
                  Row(
                    children: [
                      Text(
                        "19.99 €",
                        style: AppStyles.style20.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat-Bold",
                        ),
                      ),
                      SizedBox(width: 35),
                      Expanded(child: BooksRating()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
