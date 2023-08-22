import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:go_router/go_router.dart';

class BodySplashView extends StatefulWidget {
  const BodySplashView({
    super.key,
  });

  @override
  State<BodySplashView> createState() => _BodySplashViewState();
}

class _BodySplashViewState extends State<BodySplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      GoRouter.of(context).push('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ZoomIn(
            duration: const Duration(milliseconds: 1000),
            child: Image.asset(
              "assets/Logo.png",
              scale: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          ZoomIn(
            duration: const Duration(milliseconds: 1700),
            child: Text(
              "Read Free Books !",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
