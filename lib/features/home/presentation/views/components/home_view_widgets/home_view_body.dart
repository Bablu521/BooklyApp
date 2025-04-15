import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/best_seller_list.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/books_listview.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_view_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverPadding(
            padding: const EdgeInsets.only(top: 40, bottom: 40),
            sliver: SliverToBoxAdapter(child: BooksListView()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("Best Seller", style: AppStyles.style18),
            ),
          ),
          BestSellerList()
        ],
      ),
    );
  }
}
