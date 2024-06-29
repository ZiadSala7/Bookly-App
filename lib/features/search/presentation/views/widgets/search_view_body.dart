import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Search Results',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
