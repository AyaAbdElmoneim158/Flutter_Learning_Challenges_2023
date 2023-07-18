import 'package:flutter/material.dart';

class BusinessCardDesignScreen extends StatelessWidget {
  const BusinessCardDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "BusinessCardDesignScreen",//D2BCD5
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}