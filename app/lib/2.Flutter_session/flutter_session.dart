/* Section.4 --------------------------------------------------------------->
   !~> Setup Sdk (Windows, mac) 
   !~> Create first flutterApp
   !~> MaterialApp + Scaffold
   !~> Custom Widgets
   !~> Hot reload
   !~> Container, Column, Row
 */

/* Section.5 --------------------------------------------------------------->
    !~> Birthday Card Design 
*/

/* Section.6 --------------------------------------------------------------->
    !~> Business Card Design 
        ~> Circle image, Add fonts, Spacer, divider, margin, padding, listTile, 
*/

/* Section.7 --------------------------------------------------------------->
    !~> Basketball Card Design 
        ~> StateFull Widget
*/

/* Section.8 --------------------------------------------------------------->
    !~> language learning Design 
        ~> refactor_code, Navigation,Add_package ,playSound(audioSound)
*/

import 'package:flutter/material.dart';

class FlutterSession extends StatelessWidget {
  const FlutterSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "FlutterSession",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
