import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/cutom_list_view_item.dart';

class FeatureBooksView extends StatelessWidget {
  const FeatureBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const CustomListViewItem();
      },
    );
  }
}
