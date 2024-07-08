import 'package:bookly_app/features/home/presentaion/managers/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_shimmer_featured_item.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/cutom_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksView extends StatelessWidget {
  const FeatureBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (state is FeaturedBooksSuccess) {
              return const CustomBookItem();
            } else if (state is FeaturedBooksFailure) {
              return Center(
                child: Text(state.errMessage),
              );
            } else {
              return const CustomShimmerItem();
            }
          },
        );
      },
    );
  }
}
