import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
    //   builder: (context, state) {
    //     if (state is SimilarBooksSuccess) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          itemCount: 7, //state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImage(
                imageUrl:
                    'assets/test_book_image_2.png', //state.books[index].volumeInfo.imageLinks?.thumbnail ??'',
              ),
            );
          }),
    );
    //     } else if (state is SimilarBooksFailure) {
    //       return CustomErrorWidget(errMessage: state.errMessage);
    //     } else {
    //       return const CustomLoadingIndicator();
    //     }
    //   },
    // );
  }
}
