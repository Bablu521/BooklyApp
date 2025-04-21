import 'package:bookly_app/features/search/logic/manager/searched_books_cubit/cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return TextFormField(
      controller: controller,
      onFieldSubmitted: (value) {
        if (value.isNotEmpty) {
          context.read<SearchedBooksCubit>().getSearchedBooks(searchKey: value);
          controller.clear();
        }
      },
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
            color: Colors.white,
          ),
        ),
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(width: 2, color: Colors.white),
  );
}
