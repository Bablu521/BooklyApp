import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class OtherBooksItem extends StatelessWidget {
  const OtherBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 110,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.test2),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
  }
}