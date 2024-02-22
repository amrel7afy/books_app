import 'package:books_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
      child: Row(
        children: [
          IconButton(icon:const Icon(Icons.close),onPressed:()=> Navigator.pop(context),),
          const Spacer(),
          const Icon(Icons.shopping_cart)
        ],
      ),
    );
  }
}
