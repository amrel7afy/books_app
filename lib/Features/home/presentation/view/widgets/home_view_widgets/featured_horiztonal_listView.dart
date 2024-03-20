import 'dart:developer';

import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/functions.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/book_entity.dart';



class FeaturedListView extends StatefulWidget {
  final List<BookEntity> books;
  const FeaturedListView({super.key, required this.books});

  @override
  State<FeaturedListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedListView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_listenToScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenToScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _listenToScroll() {
    if (_isScrolledTo70Percent()) {
      log("Scrolled to 70% of the list!");
    }
  }

  bool _isScrolledTo70Percent() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final percent = currentScroll / maxScroll;
    return percent >= 0.7; // Adjust as needed
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: getHeight(context)*0.34,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,index){
          return  BookImage(bookImg:widget.books[index].img);
        }, itemCount: 10,),
    );
  }
}