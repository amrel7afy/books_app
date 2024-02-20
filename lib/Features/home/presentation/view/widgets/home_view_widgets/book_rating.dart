import 'package:flutter/material.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final double rating;
  final int count;
  const BookRating({super.key, this.mainAxisAlignment=MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const    Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,size: 20,),
        const   HorizontalSpacer(3),
            Text(rating.toString(),style: MyTextStyles.boldTextStyle16,),
        const   HorizontalSpacer(3),
        Text('(${count.toString()})',style: MyTextStyles.mediumTextStyle14.copyWith(color: Colors.grey))
      ],
    );
  }
}