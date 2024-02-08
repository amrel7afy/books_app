import 'package:books_app/Features/splash/presentation/view/widgets/sliding_animated_text.dart';
import 'package:books_app/core/utils/constants/my_assets.dart';
import 'package:books_app/core/utils/constants/my_text_styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //--------------------------------

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1300));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 5),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    super.initState();
  }
@override
  void dispose() {
  animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(MyAssets.logo),
        SlidingAnimatedText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}


