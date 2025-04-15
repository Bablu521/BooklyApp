import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.logo)),
      ),
    );
  }
}
