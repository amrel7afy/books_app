import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_relevant_books_cubit/fetch_relevant_books_cubit.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/constants/widgets/loading_indicator.dart';
import '../../../view_model/cubits/fetch_relevant_books_cubit/fetch_relevant_books_state.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<FetchRelevantBooksCubit, FetchRelevantBooksState>(
      builder: (context, state) {
        if (state is FetchRelevantBooksLoading) {
          return const CustomLoadingIndicator();
        } else if (state is FetchRelevantBooksSuccess) {
          return buildSuccessBody(context,state);
        } else {
          return CustomErrorMessage(state: state);
        }
      },
    );
  }
}

Padding buildSuccessBody(context,FetchRelevantBooksSuccess state){
  return Padding(
    padding: const EdgeInsets.only(left: kRightBookDetailsViewPadding),
    child: SizedBox(
      height: getHeight(context) * 0.17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return  Padding(
            padding: const EdgeInsets.only(right: kRightHomeViewPadding),
            child: BookImage(
              imageUrl: state.relevantBooks[index].volumeInfo?.imageLinks?.thumbnail??'no image'
            ),
          );
        }, itemCount: state.relevantBooks.length,),
    ),
  );
}