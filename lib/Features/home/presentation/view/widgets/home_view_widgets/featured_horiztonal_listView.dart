import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/functions.dart';
import 'package:flutter/material.dart';



class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: getHeight(context)*0.34,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,index){
          return const BookImage();
        }, itemCount: 10,),
    );
  }
}