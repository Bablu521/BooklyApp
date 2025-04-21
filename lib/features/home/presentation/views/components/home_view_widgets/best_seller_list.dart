import 'package:bookly_app/features/home/logic/manager/best_seller_books_cubit/cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/best_seller_books_cubit/cubit/best_seller_books_state.dart';
import 'package:bookly_app/core/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return SliverList.builder(
            itemBuilder: (context, index) {
              return BestSellerItem(book: state.books[index],);
            },
            itemCount: state.books.length,
          );
        } else if (state is BestSellerBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text("An Error Occured : ${state.errorMsg}")),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
