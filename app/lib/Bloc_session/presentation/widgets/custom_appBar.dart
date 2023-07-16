import 'package:app/Bloc_session/constants/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kYellow,
      title: const Text(
        "Characters",
        style: TextStyle(color: AppColor.kGray),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColor.kGray,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
