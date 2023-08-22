import 'package:app/4.Bookly_App/core/Widgets/list_view_item.dart';
import 'package:app/4.Bookly_App/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/details');
      },
      child: Row(
        children: [
          const ListViewItemHome(
            aspectRatio: 2 / 3,
            width: 100,
          ),
          const SizedBox(width: sizeBox * 2.3),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.4,
                child: const Text(
                  "Harry Poter and Golbet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    // fontFamily: GoogleFonts.g,
                    color: AppColors.ktextColor,
                    fontSize: 20,

                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: sizeBox / 2),
              Text(
                "J.K.Rowling",
                style: TextStyle(
                  color: AppColors.ktextColor.withOpacity(0.3),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: sizeBox),
              const Row(
                children: [
                  Text(
                    r"19.99 $",
                    style: TextStyle(
                      color: AppColors.ktextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                      color: AppColors.ktextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "(2390)",
                    style: TextStyle(
                      color: AppColors.ktextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
