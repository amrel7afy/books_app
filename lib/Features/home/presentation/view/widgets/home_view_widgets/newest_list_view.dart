import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/newest_card.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_newest_books_cubit/fetch_newest_books_state.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:books_app/core/utils/constants/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/cubits/fetch_newest_books_cubit/fetch_newest_books_cubit.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBooksCubit, FetchNewestBooksState>(
      builder: (context, state) {
        if (state is FetchNewestBooksLoading) {
          return const CustomLoadingIndicator();
        } else if (state is FetchNewestBooksSuccess) {
          return buildSuccessBody(state);
        } else {
          return CustomErrorMessage(state: state);
        }
      },
    );
  }

  ListView buildSuccessBody(FetchNewestBooksSuccess state) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: state.newestBooks.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  right: kRightHomeViewPadding, bottom: 10, top: 10),
              child: NewestCard(
                book: state.newestBooks[index],
              ),
            );
          },
        );
  }
}
