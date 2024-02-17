import 'package:books_app/core/utils/AppRouter.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kRightHomeViewPadding),
      child: Row(children: [
        Image.asset(MyAssets.logo,width: 100,height: 50,),
        const Spacer(),
        IconButton(icon:const Icon(FontAwesomeIcons.magnifyingGlass,size: 20,), onPressed: () {

          Navigator.pushNamed(context, AppRouter.searchView);
        } ,)

      ],),
    );
  }
}