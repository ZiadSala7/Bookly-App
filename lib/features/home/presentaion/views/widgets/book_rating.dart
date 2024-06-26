import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          '4.3',
          style: Styles.textStyle16,
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
