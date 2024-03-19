import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_actions.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_card.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/functions.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';

import '../home_view_widgets/book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.22),
            child: const BookImage(),
          ),
          const VerticalSpacer(20),
          const Text(
            'The Jungle Book',
            style: MyTextStyles.mediumTextStyle30,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Robert Sedgier',
              style: MyTextStyles.mediumTextStyle16.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const VerticalSpacer(20),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const VerticalSpacer(20),
          const BookActions(),
        ],
      ),
    );
  }
}