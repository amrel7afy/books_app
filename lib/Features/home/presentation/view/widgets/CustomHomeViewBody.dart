import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:flutter/material.dart';

import 'featured_horzonal_listView.dart';
import 'custom_app_bar.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomAppBar(),
        CategoryListView(),
        SizedBox(height: 20,),
        Text('Best Seller',style: MyTextStyles.headLine4,
        )
      ],
    );
  }
}