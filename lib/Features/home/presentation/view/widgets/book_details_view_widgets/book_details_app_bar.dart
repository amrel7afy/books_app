import 'package:books_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
      child: Row(
        children: [
          Icon(Icons.close),
          Spacer(),
          Icon(Icons.shopping_cart)
        ],
      ),
    );
  }
}
