import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    title: Image.asset(
      AppImages.logo,
      height: 100,
      width: 80,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
    ],
  );
}
