import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SimilarBoooksView extends StatelessWidget {
  const SimilarBoooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 2.8 / 4,
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.testImage),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
