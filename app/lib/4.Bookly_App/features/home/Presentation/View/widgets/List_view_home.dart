// ignore_for_file: file_names
import 'package:app/4.Bookly_App/core/Widgets/list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ListviewHome extends StatelessWidget {
  const ListviewHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        // ToDo .... Design.1-------------------------------------------------
        //     SizedBox(
        //   height: 220,
        //   child: ListView.separated(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 5,
        //     itemBuilder: (context, index) =>
        //         const ListViewItemHome(aspectRatio: 2 / 4),
        //     separatorBuilder: (context, index) => const SizedBox(width: 16),
        //   ),
        // );
        // ToDo .... Design.2-------------------------------------------------
        CarouselSlider.builder(
      options: CarouselOptions(
        height: 200,
        aspectRatio: 3 / 2,
        viewportFraction: .5,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          const ListViewItemHome(
        aspectRatio: 2 / 3,
        width: 140,
      ),
    );
  }
}
