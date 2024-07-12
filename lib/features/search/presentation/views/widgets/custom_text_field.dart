import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Function(String) onChange;
  const CustomTextField({super.key, required this.onChange});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChange,
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
