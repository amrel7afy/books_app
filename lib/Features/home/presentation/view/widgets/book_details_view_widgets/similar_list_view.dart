import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: kRightBookDetailsViewPadding),
      child: SizedBox(
        height: getHeight(context)*0.14,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,index){
            return const BookImage(imageUrl: 'https://th.bing.com/th/id/OIP.Wr1eKs2VHyEN_R7FtGI_eAHaE8?rs=1&pid=ImgDetMain',
            );
          }, itemCount: 10,),
      ),
    );
  }
}