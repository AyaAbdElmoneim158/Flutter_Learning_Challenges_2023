import 'package:flutter/material.dart';

class ListViewItemHome extends StatelessWidget {
  const ListViewItemHome(
      {super.key, required this.aspectRatio, required this.width});
  final double aspectRatio;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // color: Colors.red,
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/test_book_image_2.png"))),
        ),
      ),
    );
  }
}
