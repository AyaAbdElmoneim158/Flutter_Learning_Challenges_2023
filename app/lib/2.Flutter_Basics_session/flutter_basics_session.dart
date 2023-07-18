import 'package:app/2.Flutter_Basics_session/login_design_screen.dart';
import 'package:flutter/material.dart';

/* Section.3  --------------------------------------------------------->
  !~> Install.SDK + IDE
  !~> Create + Run first project
  !~> AppBar + IconButton + SafeArea + SingleScrollView
  !~> Column + Row + Expanded + Wrap + Stack
  !~> ListView + GridView + stateLess vs stateFull
  !~> Design Login + Messenger

 */

class FlutterBasicsSession extends StatelessWidget {
  const FlutterBasicsSession({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginDesignScreen(),
    );
  }
}
