// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app/Bloc_session/constants/color.dart';
import 'package:app/Bloc_session/data/model/character_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.character,
  });

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    // var height
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 600,
            pinned: true,
            stretch: true,
            // backgroundColor: AppColor.kGray,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(character.name),
              background: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Container(
                    // width: double.infinity,
                    // height: double.infinity,
                    color: Colors.black38,
                    child: Text("kk"),
                  ),
                  Image.network(
                    character.image,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            elevation: 0,
            // title: Text(character.name),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Text(character.name),
                      Text(character.gender),
                      Text(character.species),
                      Text(character.status),
                      Text(character.url),
                      const SizedBox(height: 1200),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
