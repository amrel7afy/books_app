import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';

import 'similar_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kRightBookDetailsViewPadding),
          child: Text(
            'You can also like',
            style: MyTextStyles.boldTextStyle16,
          ),
        ),
        VerticalSpacer(10),
        SimilarBooksListView(),
        VerticalSpacer(30)
      ],
    );
  }
}