import 'dart:developer';

import 'package:books_app/core/model/book.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/my_colors.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:books_app/core/utils/constants/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  final Book book;

  const BookActions({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: getWidth(context) * 0.4,
          height: 45,
          child: CustomButton(
            textStyle: MyTextStyles.boldTextStyle16,
            backGroundColor: MyColors.kPrimaryColor,
            onPressed: () {},
            text: 'Free',
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(13), topLeft: Radius.circular(13)),
          ),
        ),
        SizedBox(
          width: getWidth(context) * 0.4,
          height: 45,
          child: CustomButton(
            textStyle: MyTextStyles.boldTextStyle15
                .copyWith(color: MyColors.kPrimaryColor),
            backGroundColor: const Color(0xffe87a64),
            onPressed: () async {
              log(book.volumeInfo!.previewLink ?? '');

              final Uri url = Uri.parse(book.volumeInfo?.previewLink??'');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            text: 'Free Preview',
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(13),
                topRight: Radius.circular(13)),
          ),
        )
      ],
    );
  }
}
