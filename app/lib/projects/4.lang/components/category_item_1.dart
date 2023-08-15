import 'package:flutter/material.dart';

class CategoryItem1 extends StatelessWidget {
  const CategoryItem1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(234, 88, 12, 1),
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/App_3_imgs/numbers_images/number_one.png",
            width: 20,
            height: 20,
            fit: BoxFit.cover,
          ),
          const Text("FlutLab is on your service!"),
          const Icon(Icons.mood),
        ],
      ),
    );
  }
}
