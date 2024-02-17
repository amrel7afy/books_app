import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_app_bar.dart';
import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_section.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';

import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CustomBookDetailsAppBar(),
              VerticalSpacer(10),
              BookDetailsSection(),
              Expanded(child: VerticalSpacer(30)),
              SimilarBooksSection()
            ],
          ),
        )
      ],

    );
  }
}

