import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/home_details_body.dart';
import 'package:flutter/material.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: HomeDetailsBody(),
      ),
    );
  }
}