import 'package:flutter/material.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/vertical_and_horizontal_space.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment=MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: mainAxisAlignment,
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