import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_state.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_list_view.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/featured_horiztonal_listView.dart';
import 'package:books_app/core/utils/constants/constants.dart';

import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:books_app/core/utils/constants/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/constants/widgets/vertical_and_horizontal_space.dart';

import 'featured_list_view_bloc_builder.dart';
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

