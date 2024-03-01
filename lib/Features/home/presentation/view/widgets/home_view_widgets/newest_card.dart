import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/core/utils/AppRouter.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/constants.dart';
import '../../../../../../core/model/book.dart';
import 'book_rating.dart';

class NewestCard extends StatelessWidget {
  final Book book;
  const NewestCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo( context,AppRouter.bookDetailsView, arguments: book);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            BookImage(imageUrl: book.volumeInfo?.imageLinks?.thumbnail??'no Image', onTap: () {

              navigateTo(context, AppRouter.bookDetailsView,arguments:book);
            },)            ,
            const HorizontalSpacer(30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //حاطط التيكست جوا sized box عشان ينزل للسطر اللي بعده
                  SizedBox(
                      width: getWidth(context) * 0.7,
                      child: Text(
                        book.volumeInfo!.title!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: MyTextStyles.mediumTextStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                      )),
                  const VerticalSpacer(3),
                   Text(book.volumeInfo!.authors!.isNotEmpty?book.volumeInfo!.authors![0]:'No Author',
                     maxLines: 1,
                     overflow: TextOverflow.fade,

                     style: MyTextStyles.mediumTextStyle14,),
                    Row(
                    children: [
                      const Text('Free',style: MyTextStyles.boldTextStyle18,),
                      const Spacer(),
                     BookRating(
                        rating: book.volumeInfo?.averageRating ?? 0,
                       count: book.volumeInfo?.ratingsCount??0,
                     )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}





