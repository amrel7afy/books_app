import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/CustomHomeViewBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: CustomHomeViewBody()),
    );
  }
}





