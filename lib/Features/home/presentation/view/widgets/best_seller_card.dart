import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/constants.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3.5/6,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(cardBorderRadius),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.Wr1eKs2VHyEN_R7FtGI_eAHaE8?rs=1&pid=ImgDetMain',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
