import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
    //   builder: (context, state) {
    //     if (state is FeaturedBooksSuccess) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 7, //state.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push('/details'); // ,extra: state.books[index],
                },
                child: const CustomBookImage(
                  imageUrl:
                      'assets/test_book_image_2.png', //state.books[index].volumeInfo.imageLinks?.thumbnail ??'',
                ),
              ),
            );
          }),
    );
    // } else if (state is FeaturedBooksFailure) {
    //   return CustomErrorWidget(errMessage: state.errMessage);
    // } else {
    //   return const CustomLoadingIndicator();
    // }
    // },
    // );
  }
}
