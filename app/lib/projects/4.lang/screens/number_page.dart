import 'package:app/projects/4.lang/components/category_item_1.dart';
import 'package:flutter/material.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Number Page")),
      body: const Column(children: [CategoryItem1()]),
    );
  }
}
