import 'package:flutter/material.dart';
import 'dart:math';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double width = 200;
  double height = 200;
  double radius = 16;
  Color? color = Colors.blue;
  var random = Random();
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: visible ? 1 : 0,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(radius)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          width = random.nextInt(250).toDouble();
          height = random.nextInt(250).toDouble();
          radius = random.nextInt(50).toDouble();
          color = Color.fromRGBO(
              random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
          visible = !visible;
          setState(() {});
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
