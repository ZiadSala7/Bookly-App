import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.spaceBetween});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
          size: 25,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '4.3',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(245)',
          style: Styles.textStyle14.copyWith(
            color: const Color.fromARGB(255, 144, 133, 133),
          ),
        ),
      ],
    );
  }
}
