import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/my_text_styles.dart';

class SlidingAnimatedText extends StatelessWidget {
  const SlidingAnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
              position: slidingAnimation,
              child: const Text('Read Free Books',textAlign: TextAlign.center,style: MyTextStyles.smallBody,));
        }
    );
  }
}