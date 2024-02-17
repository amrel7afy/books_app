import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/my_colors.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: getWidth(context)*0.4,
          child: CustomButton(
            textStyle: MyTextStyles.boldTextStyle15,
            backGroundColor: MyColors.kPrimaryColor,
            onPressed: () {},
            text: '19.99 .LE',
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(13),topLeft: Radius.circular(13)),
          ),
        ),
        SizedBox(
          width: getWidth(context)*0.4,
          child: CustomButton(
            textStyle: MyTextStyles.boldTextStyle15.copyWith(color: MyColors.kPrimaryColor),
            backGroundColor: const Color(0xffe87a64),
            onPressed: () {},
            text: 'Free Preview',
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(13),topRight: Radius.circular(13)),
          ),
        )
      ],
    );
  }
}
