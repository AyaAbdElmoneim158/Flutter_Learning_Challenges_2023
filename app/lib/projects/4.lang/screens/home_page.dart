import 'package:app/projects/4.lang/components/home_item_type.dart';
import 'package:app/projects/4.lang/screens/colors_page.dart';
import 'package:app/projects/4.lang/screens/family_members_page.dart';
import 'package:app/projects/4.lang/screens/number_page.dart';
import 'package:app/projects/4.lang/screens/phases_page.dart';
import 'package:flutter/material.dart';

class LangApp extends StatelessWidget {
  const LangApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toku"),
        backgroundColor: const Color.fromRGBO(120, 113, 108, 1),
        elevation: 1.6,
      ),
      body: Column(
        children: [
          HomeItemType(
              color: const Color.fromRGBO(6, 182, 212, 1),
              text: "Number",
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NumberPage()))
                  }),
          HomeItemType(
              color: const Color.fromRGBO(8, 145, 178, 1),
              text: "Family Members",
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FamilyMemberPage()))
                  }),
          HomeItemType(
              color: const Color.fromRGBO(14, 116, 144, 1),
              text: "Colors",
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ColorsPage()))
                  }),
          HomeItemType(
              color: const Color.fromRGBO(21, 94, 117, 1),
              text: "phases",
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhasesPage()))
                  }),
        ],
      ),
    );
  }
}
