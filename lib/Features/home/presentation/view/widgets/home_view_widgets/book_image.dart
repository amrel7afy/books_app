

import 'package:books_app/core/utils/constants/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class BookImage extends StatelessWidget {
  final String imageUrl;
  const BookImage({super.key, required this.imageUrl});
  //'https://th.bing.com/th/id/OIP.Wr1eKs2VHyEN_R7FtGI_eAHaE8?rs=1&pid=ImgDetMain',

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: AspectRatio(
        aspectRatio: 3.8/6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context,url,error)=>const Icon(FontAwesomeIcons.circleExclamation,),
          ),
        ),
      ),
    );
  }
}