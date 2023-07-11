import 'package:app/Bloc_session/business_logic/cubit/characters_cubit.dart';
import 'package:app/Bloc_session/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kYellow,
      title: const Text(
        "Charachters",
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
