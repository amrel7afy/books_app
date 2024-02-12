import 'package:books_app/core/utils/constants/methods.dart';
import 'package:flutter/material.dart';

import 'featured_item_horizontal_listview.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: getHeight(context)*0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,index){
          return const FeaturedHorizontalListViewCard();
        }, itemCount: 10,),
    );
  }
}