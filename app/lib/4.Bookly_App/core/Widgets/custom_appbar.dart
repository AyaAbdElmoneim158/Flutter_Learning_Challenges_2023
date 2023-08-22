import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/Logo.png", width: 75, height: 16),
        const Spacer(),
        IconButton(
            padding: EdgeInsetsDirectional.zero,
            alignment: AlignmentDirectional.centerEnd,
            onPressed: () {
              GoRouter.of(context).push('/search');
            },
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            )),
      ],
    );
  }
}
