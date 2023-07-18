import 'package:flutter/material.dart';

class LoginDesignScreen extends StatelessWidget {
  const LoginDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "LoginDesignScreen",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
