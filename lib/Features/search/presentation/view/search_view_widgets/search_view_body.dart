import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/search_field.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kRightHomeViewPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultFormField(
                  textInputType: TextInputType.text,
                  hint: 'Search',
                  suffixIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 20,
                  ),
                ),
                VerticalSpacer(15),
                Text(
                  'Search Results',
                  style: MyTextStyles.boldTextStyle18,
                ),
              ],
            ),
          ),
          SearchResultsListView()
        ],
      ),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 5, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(
              right: kRightHomeViewPadding, bottom: 10, top: 10),
          child: Container(),
        );
      }),
    );
  }
}
