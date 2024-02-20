import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/newest_list_view.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/featured_horiztonal_listView.dart';
import 'package:books_app/core/utils/constants/constants.dart';

import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import 'home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: kLeftHomeViewPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomeViewAppBar(),
                VerticalSpacer(10),
                FeaturedListView(),
                VerticalSpacer(30),
                Text(
                  'Newest Books',
                  style: MyTextStyles.semiBoldTextStyle18,
                ),
                VerticalSpacer(20),
              ],
            ),
          ),
          SliverFillRemaining(child: NewestBooksListView()),
        ],
      ),
    );
  }
}
