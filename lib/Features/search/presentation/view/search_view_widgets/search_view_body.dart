import 'dart:developer';

import 'package:books_app/Features/search/presentation/view/search_view_widgets/search_results_listview.dart';
import 'package:books_app/Features/search/presentation/view_model/cubits/search_cubit/search_cubit.dart';
import 'package:books_app/Features/search/presentation/view_model/cubits/search_cubit/search_state.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:books_app/core/utils/constants/widgets/loading_indicator.dart';
import 'package:books_app/core/utils/constants/widgets/search_field.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatefulWidget {
   const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
final TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kRightHomeViewPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultFormField(
                  onChanged: (value) {
                    log(controller.text.trim());
                   if(controller.text.trim().isNotEmpty){
                     context
                         .read<SearchCubit>()
                         .searchForAbook(book: controller.text.trim() );
                   }
                  },

                  textInputType: TextInputType.text,
                  hint: 'Search',
                  suffixIcon: const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                  ), controller: controller,
                ),
                const VerticalSpacer(15),
                const Text(
                  'Search Results',
                  style: MyTextStyles.boldTextStyle18,
                ),
              ],
            ),
          ),
          BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
            if (state is SearchForAbookLoading) {
              return const SliverToBoxAdapter(child: CustomLoadingIndicator());
            } else if (state is SearchForAbookSuccess) {
              return SearchResultsListView(
                searchedBooks: state.searchedBooks,
              );
            } else if (state is SearchForAbookFailure) {
              return SliverToBoxAdapter(
                  child: CustomErrorMessage(state: state));
            } else {
              return const Initial();
            }
          })
        ],
      ),
    );
  }
}

class Initial extends StatelessWidget {
  const Initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Text(
              'No Searched Books',
              style: MyTextStyles.boldTextStyle20,
            ),
          ),
        ],
      ),
    );
  }
}
