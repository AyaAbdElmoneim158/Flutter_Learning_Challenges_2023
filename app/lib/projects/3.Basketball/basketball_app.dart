import 'package:flutter/material.dart';

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  int pointsA = 0;
  int pointsB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0.9,
      ),
      body: Column(children: [
        Expanded(
          flex: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Text(
                        "Team A",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        "$pointsA",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.black),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsA++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9109)),
                        child: const Text("Add 1 point"),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsA += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9109)),
                        child: const Text("Add 2 point"),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsA += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9109)),
                        child: const Text("Add 3 point"),
                      ),
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 64),
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Text(
                        "Team B",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        "$pointsB",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.black),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsB++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9109)),
                        child: const Text("Add 1 point"),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsB += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9109)),
                        child: const Text("Add 2 point"),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pointsB += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffff9109)),
                        child: const Text("Add 3 point"),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pointsA = 0;
                        pointsB = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffff9109)),
                    child: Text(
                      "rest",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            )),
      ]),
    );
  }
}
