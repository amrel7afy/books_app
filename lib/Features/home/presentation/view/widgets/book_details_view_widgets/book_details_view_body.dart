import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_app_bar.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/vertical&horizontal_space.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const VerticalSpacer(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(context)*0.17),
            child: const BookImage(),
          ),
        ],
      ),
    );
  }
}
