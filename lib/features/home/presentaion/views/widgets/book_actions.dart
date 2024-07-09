import 'package:bookly_app/features/home/presentaion/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              txt: r'Free',
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              backgroundColor: Colors.white,
              txtColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomTextButton(
              txt: 'Free preview',
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              backgroundColor: Color(0xffEf8262),
              txtColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
