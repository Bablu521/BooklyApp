import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/books_rating.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  final BookModel book;
  const BestSellerItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 35),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRouter.homeDetailsView , arguments: book);
        },
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
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                            book.volumeInfo.imageLinks?.thumbnail ?? "https://cdn-icons-png.flaticon.com/128/7340/7340665.png",
                          ),
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
                      book.volumeInfo.title ?? "Title",
                      style: AppStyles.style20.copyWith(
                        height: 1.2
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      book.volumeInfo.authors?[0] ?? "Author",
                      style: AppStyles.style14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          book.saleInfo?.listPrice?.amount != null
                              ? "${book.saleInfo!.listPrice!.amount!.toInt()} ${book.saleInfo!.listPrice!.currencyCode ?? ''}"
                              : "Free",
                          style: AppStyles.style20.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat-Bold",
                          ),
                        ),
                        BooksRating()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
