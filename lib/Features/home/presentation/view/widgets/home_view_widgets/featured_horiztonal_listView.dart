import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:flutter/material.dart';



class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: getHeight(context)*0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,index){
          return const BookImage();
        }, itemCount: 10,),
    );
  }
}