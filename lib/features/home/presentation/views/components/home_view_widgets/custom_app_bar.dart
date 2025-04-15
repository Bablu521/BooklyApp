import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30 , top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 75,
            height: 15,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppAssets.logo)),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
