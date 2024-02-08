import 'package:books_app/Features/home/presentation/view/widgets/CustomHomeViewBody.dart';
import 'package:books_app/core/utils/constants/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: CustomHomeViewBody()),
    );
  }
}





