import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_list_view.dart';
import 'package:books_app/core/utils/constants/constants.dart';

import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import 'featured_list_view_bloc_builder.dart';
import 'home_view_app_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
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
                FeaturedListViewBlocBuilder(),
                VerticalSpacer(30),
                Text(
                  'Best Seller',
                  style: MyTextStyles.semiBoldTextStyle18,
                ),
                VerticalSpacer(20),
              ],
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}

