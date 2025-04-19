import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsPreview extends StatelessWidget {
  final BookModel book;
  const BookDetailsPreview({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    Future<void> launcherUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: Text(
                book.saleInfo?.listPrice?.amount != null
                    ? "${book.saleInfo!.listPrice!.amount!.toInt()} ${book.saleInfo!.listPrice!.currencyCode ?? ''}"
                    : "Free",
                style: AppStyles.style18.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                final previewLink = book.volumeInfo.previewLink;
                if (previewLink != null && previewLink.isNotEmpty) {
                  final Uri url = Uri.parse(previewLink);
                  launcherUrl(url);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Preview link not available.')),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  color: AppColor.orange,
                ),
                child: Text(
                  "Free preview",
                  style: AppStyles.style16.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Segoe UI",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
