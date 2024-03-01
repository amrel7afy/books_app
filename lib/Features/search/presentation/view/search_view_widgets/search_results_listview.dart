import 'package:books_app/core/model/book.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/home_view_widgets/newest_card.dart';

class SearchResultsListView extends StatelessWidget {
final List<Book> searchedBooks;
  const SearchResultsListView({super.key, required this.searchedBooks});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: searchedBooks.length-1, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
              right: kRightHomeViewPadding, bottom: 10, top: 10),
          child: NewestCard(book:searchedBooks[index]),
        );
      }),
    );
  }
}