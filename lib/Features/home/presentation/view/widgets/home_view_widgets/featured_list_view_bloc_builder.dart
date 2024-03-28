import 'dart:developer';

import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_state.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/featured_horiztonal_listView.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:books_app/core/utils/constants/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/book_entity.dart';



class FeaturedListViewBlocBuilder extends StatefulWidget {
  const FeaturedListViewBlocBuilder({
    super.key,
  });

  @override
  State<FeaturedListViewBlocBuilder> createState() => _FeaturedListViewBlocBuilderState();
}

class _FeaturedListViewBlocBuilderState extends State<FeaturedListViewBlocBuilder> {

List<BookEntity>books=[];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchFeaturedBooksCubit,FetchFeaturedBooksState>(
        builder: (context,state) {
          if(state is FetchFeaturedBooksSuccess|| state is FetchFeaturedBooksPaginationLoading){
          if(state is FetchFeaturedBooksSuccess){
            log('state: ${state.books.length}');
          }
            return  FeaturedListView(books: books,);
          }
          else if (state is FetchFeaturedBooksFailure){
            return CustomErrorMessage(errorMessage: state.error,);
          }
          else{
            return const CustomLoadingIndicator();
          }
        }, listener: (BuildContext context, FetchFeaturedBooksState state) {
          if (state is  FetchFeaturedBooksSuccess){
            books.addAll(state.books);
            log(">>>::${books.length}");
          }
    },
    );
  }
}
