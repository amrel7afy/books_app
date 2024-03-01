import 'package:books_app/Features/search/presentation/view/search_view_widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child:
      SearchViewBody()
      ),
    );
  }
}
