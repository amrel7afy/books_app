import 'package:books_app/Features/home/presentation/view/widgets/home_view_widgets/book_image.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_featured_books_cubit/fetch_featured_books_state.dart';
import 'package:books_app/core/utils/AppRouter.dart';
import 'package:books_app/core/utils/constants/constants.dart';
import 'package:books_app/core/utils/constants/methods.dart';
import 'package:books_app/core/utils/constants/widgets/custom_error_message.dart';
import 'package:books_app/core/utils/constants/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        if(state is FetchFeaturedBooksLoading){
          return const CustomLoadingIndicator();
        }
        else if(state is FetchFeaturedBooksSuccess){
          return buildSuccessBody(context, state);
        }
       else{
         return CustomErrorMessage(state: state);
        }
      },
    );
  }

  SizedBox buildSuccessBody(BuildContext context, FetchFeaturedBooksSuccess state) {
    return SizedBox(
          height: getHeight(context) * 0.34,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              return  Padding(
                padding: const EdgeInsets.only(right: kRightHomeViewPadding),
                child: GestureDetector(
                  onTap: (){
                    navigateTo(context, AppRouter.bookDetailsView,arguments:state.featuredBooks[index] );
                  },
                  child: BookImage(
                      imageUrl:state.featuredBooks[index].volumeInfo?.imageLinks?.thumbnail??'no image'
                  ),
                ),
              );
            }, itemCount: state.featuredBooks.length,),
        );
  }
}