import 'package:app/generated/l10n.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({super.key});

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    var animals = [
      {
        "image":
            "https://img.freepik.com/free-photo/african-lion-portrait-warm-light_475641-46.jpg",
        "name": S.of(context).LoinName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/red-white-cat-i-white-studio_155003-13189.jpg",
        "name": S.of(context).CatName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/elephant-walking-road_181624-23124.jpg",
        "name": S.of(context).ElephantName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/tiger-looking-with-open-mouth_1150-18083.jpg",
        "name": S.of(context).TigerName
      },
      {
        "image":
            "https://img.freepik.com/premium-photo/holstein-cow-standing_191971-14133.jpg",
        "name": S.of(context).CowName
      },
      {
        "image":
            "https://img.freepik.com/premium-photo/suffolk-sheep-front-white-background_191971-8791.jpg",
        "name": S.of(context).SheepName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/one-pink-flamingo-bird-closeup_90220-1067.jpg",
        "name": S.of(context).flamingoName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/giraffe-wild_167946-142.jpg?size=626&ext=jpg",
        "name": S.of(context).giraffeName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/horse-alezan-brown-ride-mane_1303-389.jpg",
        "name": S.of(context).horseName
      },
      {
        "image":
            "https://img.freepik.com/free-photo/portrait-cute-fluffy-gray-rabbit-with-ears-natural-green-grass_78492-3948.jpg",
        "name": S.of(context).rabbitName
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                void locale(lang) => MyApp.of(context)!
                    .setLocale(Locale.fromSubtags(languageCode: lang));
                Intl.getCurrentLocale() == 'ar' ? locale("en") : locale('ar');
                setState(() {});
              },
              icon: const Icon(Icons.change_circle))
        ],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30),
          itemCount: animals.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(animals[index]["image"]!),
                ),
                const SizedBox(height: 16),
                Text(animals[index]["name"]!)
              ],
            );
          }),
    );
  }
}
