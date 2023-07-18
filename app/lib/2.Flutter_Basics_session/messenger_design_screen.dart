import 'package:flutter/material.dart';

class MessengerDesignScreen extends StatelessWidget {
  const MessengerDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "MessengerDesignScreen",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
