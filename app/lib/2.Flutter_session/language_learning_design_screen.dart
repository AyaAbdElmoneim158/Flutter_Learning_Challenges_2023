import 'package:flutter/material.dart';

class LanguageLearningAppDesignScreen extends StatelessWidget {
  const LanguageLearningAppDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "LanguageLearningAppDesignScreen",//D2BCD5
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}