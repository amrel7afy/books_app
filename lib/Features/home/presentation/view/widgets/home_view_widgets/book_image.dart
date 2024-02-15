
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';




class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: 3.5/6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          child: Image.network(
            'https://th.bing.com/th/id/OIP.Wr1eKs2VHyEN_R7FtGI_eAHaE8?rs=1&pid=ImgDetMain',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}