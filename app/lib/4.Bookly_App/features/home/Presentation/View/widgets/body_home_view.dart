import 'package:app/4.Bookly_App/core/Widgets/book_card.dart';
import 'package:app/4.Bookly_App/core/Widgets/custom_appbar.dart';
import 'package:app/4.Bookly_App/core/Widgets/custom_category_title.dart';
import 'package:app/4.Bookly_App/core/constants.dart';
import 'package:app/4.Bookly_App/features/home/Presentation/View/widgets/List_view_home.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 45),
              const ListviewHome(),
              const SizedBox(height: 60),
              const CustomCategoryTitle(data: "Best Seller"),
              const SizedBox(height: sizeBox * 2.3),
              Expanded(
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const BookCard(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemCount: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
