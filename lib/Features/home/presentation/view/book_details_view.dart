import 'package:books_app/core/model/book.dart';
import 'package:books_app/Features/home/presentation/view/widgets/book_details_view_widgets/book_details_view_body.dart';
import 'package:books_app/Features/home/presentation/view_model/cubits/fetch_relevant_books_cubit/fetch_relevant_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  final Book book;
  const BookDetailsView({super.key, required this.book});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    context.read<FetchRelevantBooksCubit>().fetchRelevantBooks(bookName: widget.book.volumeInfo!.title!);
        super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(book: widget.book,),
      ),
    );
  }
}
