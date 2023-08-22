import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/books_details_sectioni.dart';
import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/custom_book_details_app_bar.dart';
import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  // final BookModel bookModel;, required this.bookModel
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 24),
                CustomBookDetailsAppBar(),
                BookDetailsSection(
                    // book: bookModel,
                    ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
