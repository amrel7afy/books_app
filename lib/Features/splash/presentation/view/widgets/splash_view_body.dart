import 'package:books_app/Features/splash/presentation/view/widgets/sliding_animated_text.dart';
import 'package:books_app/core/utils/AppRouter.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/my_assets.dart';
import 'package:flutter/material.dart';


import '../../../../../core/utils/constants/functions.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
with SingleTickerProviderStateMixin
{
 late AnimationController animationController;
 late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initAnimation();
    navigateToWithDelayed(context,AppRouter.homeView);
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(MyAssets.logo),
        SlidingAnimatedText(slidingAnimation: slidingAnimation),

      ],
    );
  }
 void initAnimation() {
   animationController =AnimationController(vsync: this,duration: kSlidingDurationVal,);
   slidingAnimation =Tween<Offset>(begin: const Offset(0,5),end: Offset.zero).animate(animationController);
   animationController.forward();
 }
}


