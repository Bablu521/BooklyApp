import 'package:bookly_app/core/di/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/manager/other_books_cubit/cubit/other_books_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/show_other_books_cubit/cubit/show_other_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/components/home_details_widgets/home_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
        create: (context) => OtherBooksCubit(homeRepo: getIt.get<HomeRepoImpl>())..getOtherBooks(),
          ),
          BlocProvider(
            create: (context) => ShowOtherBooksCubit(),
          ),
        ],
        child: const Scaffold(body: HomeDetailsBody(),),
      ),
    );
  }
}
