import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        hintText: 'Search',
        focusedBorder: outlineInputBorderMethod(),
        enabledBorder: outlineInputBorderMethod(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
