import 'package:books_app/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/utils/constants/my_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kRightScreenPadding),
      child: Row(children: [
        Image.asset(MyAssets.logo,width: 100,height: 50,),
        const Spacer(),
        IconButton(icon:const Icon(FontAwesomeIcons.magnifyingGlass), onPressed: () {  } ,)

      ],),
    );
  }
}