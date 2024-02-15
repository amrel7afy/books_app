import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_list_view.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/featured_horiztonal_listView.dart';
import 'package:books_app/core/utils/constants/constants.dart';

import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/vertical_and_horizontal_space.dart';

import 'custom_app_bar.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

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
                CustomAppBar(),
                CategoryListView(),
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
