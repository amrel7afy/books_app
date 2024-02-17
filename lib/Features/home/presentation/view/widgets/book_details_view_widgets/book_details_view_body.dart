import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_app_bar.dart';
import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_actions.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_card.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/my_colors.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/vertical_and_horizontal_space.dart';
import 'package:books_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const VerticalSpacer(10),
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


