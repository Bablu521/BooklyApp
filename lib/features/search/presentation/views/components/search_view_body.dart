import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/components/search_listview.dart';
import 'package:bookly_app/features/search/presentation/views/components/search_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: SearchTextFormField()
          ),
          Text("Search Result", style: AppStyles.style18),
          SizedBox(height: 30),
          Expanded(child: SearchListView())
        ],
      ),
    );
  }}