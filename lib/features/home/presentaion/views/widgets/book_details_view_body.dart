import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_section_details.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BookSectionDetails(),
            BookActions(),
            Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also read ',
                  style: Styles.textStyle18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SimilarBoooksView(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ]);
  }
}
