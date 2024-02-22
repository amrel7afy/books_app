import 'package:books_app/Features/home/data/model/book.dart';
import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_actions.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';

import '../home_view_widgets/book_image.dart';
import '../home_view_widgets/book_rating.dart';

class BookDetailsSection extends StatelessWidget {
  final Book book;
  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.18),
            child:  BookImage(
              imageUrl:book.volumeInfo?.imageLinks?.thumbnail??'no image'
            ),
          ),
          const VerticalSpacer(20),
           Text(
            book.volumeInfo!.title!,
            style: MyTextStyles.mediumTextStyle30,
            textAlign: TextAlign.center,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const VerticalSpacer(6),
          Opacity(
            opacity: 0.7,
            child: Text(
              book.volumeInfo!.authors![0],
              style: MyTextStyles.mediumTextStyle16.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const VerticalSpacer(20),
           BookRating(
             mainAxisAlignment: MainAxisAlignment.center,
            rating: book.volumeInfo?.averageRating ?? 0,
            count: book.volumeInfo?.ratingsCount??0,
          ),
          const VerticalSpacer(40),
          const BookActions(),
        ],
      ),
    );
  }
}
