import 'package:books_app/core/utils/constants/methods.dart';
import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: (){
        },
        child: SizedBox(
          width: getWidth(context)*0.3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              'https://th.bing.com/th/id/OIP.Wr1eKs2VHyEN_R7FtGI_eAHaE8?rs=1&pid=ImgDetMain',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}