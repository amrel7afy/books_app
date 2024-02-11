import 'package:flutter/material.dart';

import 'featured_horzonal_listView.dart';
import 'custom_app_bar.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomAppBar(),
        CategoryListView()
      ],
    );
  }
}