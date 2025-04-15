import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/core/utils/colors.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRouter.homeView : (context) => HomeView()
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.darkBlue
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}