import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/search/presentation/views/managers/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<BookModel> filteredList = [];
  List<BookModel> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchingCubit, SearchingState>(
      builder: (context, state) {
        if (state is SearchingSuccess) {
          books = state.books;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  onChange: (value) {
                    setState(() {
                      getFilteredData(searchInput: value);
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Search Results',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: SearchResultListView(
                  filteredData: filteredList,
                )),
              ],
            ),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }

  void getFilteredData({required String searchInput}) {
    setState(() {
      filteredList = books
          .where((element) =>
              element.volumeInfo.title!.toLowerCase().startsWith(searchInput))
          .toList();
    });
  }
}
