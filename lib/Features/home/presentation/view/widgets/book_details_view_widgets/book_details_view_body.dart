import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_app_bar.dart';
import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_section.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/book.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {

  final Book book;
  const BookDetailsViewBody({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const VerticalSpacer(20),
              BookDetailsSection(book: book,),
              const Expanded(child: VerticalSpacer(30)),
              const SimilarBooksSection()
            ],
          ),
        )
      ],

    );
  }
}

