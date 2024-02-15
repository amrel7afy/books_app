import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/best_seller_card.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';



class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
              (context, index) {
            return const Padding(
              padding:
              EdgeInsets.only(right: kRightScreenPadding, bottom: 10, top: 10),
              child: BestSellerCard(),
            );
          }
      ),

    );
  }
}