import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/vertical&horizontal_space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/constants/constants.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3.5 / 6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(cardBorderRadius),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.Wr1eKs2VHyEN_R7FtGI_eAHaE8?rs=1&pid=ImgDetMain',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const HorizontalSpacer(30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: getWidth(context) * 0.7,
                    child: Text(
                      'Harry Potter and the Goblet Fire Goblet Fire',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: MyTextStyles.mediumTextStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                    )),
                const VirticalSpacer(3),
                const Text('Robert Sedgier',style: MyTextStyles.mediumTextStyle14,),
                const Row(
                  children: [
                    Text('19.99 LE',style: MyTextStyles.boldTextStyle18,),
                    Spacer(),
                   BookRating()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        const    Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 20,),
        const   HorizontalSpacer(3),
        const    Text('4.8',style: MyTextStyles.boldTextStyle16,),
        const   HorizontalSpacer(3),
        Text('(3850)',style: MyTextStyles.mediumTextStyle14.copyWith(color: Colors.grey))
      ],
    );
  }
}




