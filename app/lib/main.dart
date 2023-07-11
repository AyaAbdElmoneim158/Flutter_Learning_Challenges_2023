import 'package:app/Bloc_session/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CharactersApp());
}

class CharactersApp extends StatelessWidget {
  const CharactersApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Characters App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
