import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return BestSellerItem();
      },
      itemCount: 10,
    );
  }
}
