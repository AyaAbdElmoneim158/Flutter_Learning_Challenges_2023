import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  // final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
    // category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
            // bookModel: widget.bookModel,
            ),
      ),
    );
  }
}
