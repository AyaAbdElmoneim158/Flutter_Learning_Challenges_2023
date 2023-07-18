import 'package:flutter/material.dart';

class BasketballAppDesignScreen extends StatelessWidget {
  const BasketballAppDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "BasketballAppDesignScreen",//D2BCD5
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}