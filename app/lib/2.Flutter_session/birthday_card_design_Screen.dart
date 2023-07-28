// ignore: file_names
import 'package:flutter/material.dart';

class BirthdayCardDesignScreen extends StatelessWidget {
  const BirthdayCardDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "BirthdayCardDesignScreen", //D2BCD5
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
