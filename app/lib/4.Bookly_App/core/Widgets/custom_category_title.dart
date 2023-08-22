import 'package:app/4.Bookly_App/core/constants.dart';
import 'package:flutter/material.dart';

class CustomCategoryTitle extends StatelessWidget {
  const CustomCategoryTitle({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
          fontSize: 18,
          color: AppColors.ktextColor,
          fontWeight: FontWeight.w600),
    );
  }
}
