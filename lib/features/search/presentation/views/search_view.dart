import 'package:bookly_app/core/di/service_locator.dart';
import 'package:bookly_app/features/search/data/repo/search_repo_impl.dart';
import 'package:bookly_app/features/search/logic/manager/searched_books_cubit/cubit/searched_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/components/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SearchedBooksCubit(searchRepo: getIt.get<SearchRepoImpl>()),
        child: Scaffold(body: SearchViewBody()),
      ),
    );
  }
}
