import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_list_view.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/featured_horzonal_listView.dart';
import 'package:books_app/core/utils/constants/constants.dart';

import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/vertical&horizontal_space.dart';

import 'custom_app_bar.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(left: kLeftScreenPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomAppBar(),
                CategoryListView(),
                VirticalSpacer(30),
                Text(
                  'Best Seller',
                  style: MyTextStyles.semiBoldTextStyle18,
                ),
                VirticalSpacer(20),
              ],
            ),
          ),
          BestSellerListView(),
        ],
      ),
    );
  }
}
