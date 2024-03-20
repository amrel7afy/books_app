import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_state.dart';
import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/featured_horiztonal_listView.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:books_app/core/utils/constants/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class FeaturedListViewBlocBuilder extends StatefulWidget {
  const FeaturedListViewBlocBuilder({
    super.key,
  });

  @override
  State<FeaturedListViewBlocBuilder> createState() => _FeaturedListViewBlocBuilderState();
}

class _FeaturedListViewBlocBuilderState extends State<FeaturedListViewBlocBuilder> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit,FetchFeaturedBooksState>(
        builder: (context,state) {
          if(state is FetchFeaturedBooksSuccess){
            return  FeaturedListView(books: state.books,);
          }
          else if (state is FetchFeaturedBooksFailure){
            return CustomErrorMessage(errorMessage: state.error,);
          }
          else{
            return const CustomLoadingIndicator();
          }
        }
    );
  }
}
