
import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/book_entity.dart';



class FeaturedListView extends StatefulWidget {
  final List<BookEntity> books;
  const FeaturedListView({super.key, required this.books});

  @override
  State<FeaturedListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedListView> {
  late final ScrollController _scrollController ;
  var nextPage = 1;

  var isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    var currentPositions = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FetchFeaturedBooksCubit>(context)
            .fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
        }, itemCount:widget.books.length,),
    );
  }
}