import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/constants.dart';
import 'best_seller_card.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
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