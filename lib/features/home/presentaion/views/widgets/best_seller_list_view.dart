import 'package:bookly_app/features/home/presentaion/managers/newest_books_cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_shimmer_best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksCubitState>(
      builder: (context, state) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            if (state is NewestBooksCubitSuccess) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BestSellerItem(),
              );
            } else if (state is NewestBooksCubitFailure) {
              return Center(
                child: Text(state.errMessage),
              );
            } else {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CustomShimmerBestSellerItem(),
              );
            }
          },
        );
      },
    );
  }
}
