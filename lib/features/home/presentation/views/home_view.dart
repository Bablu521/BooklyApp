import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(
      body: HomeViewBody(),
    ));
  }
}
