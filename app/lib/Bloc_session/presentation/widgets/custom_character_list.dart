import 'package:app/Bloc_session/constants/color.dart';
import 'package:app/Bloc_session/data/model/character_model.dart';
import 'package:flutter/material.dart';

class CustomCharacterList extends StatelessWidget {
  const CustomCharacterList({super.key, required this.characters});
  final List<CharacterModel> characters;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: characters.length,
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // crossAxisSpacing: 16,
            // mainAxisSpacing: 16,
            childAspectRatio: 2 / 3),
        itemBuilder: (context, index) =>
            CharacterWidget(character: characters[index]));
  }
}

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({
    super.key,
    required this.character,
  });

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: AppColor.kWhite, borderRadius: BorderRadius.circular(16)),
      child: GridTile(
        footer: Container(
            padding: const EdgeInsetsDirectional.all(8),
            color: Colors.black38,
            alignment: Alignment.center,
            child: Text(character.name)),
        child: Container(
          decoration: const BoxDecoration(color: AppColor.kGray),
          child: character.image.isNotEmpty
              ? FadeInImage(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: const NetworkImage(
                      "https://media2.giphy.com/media/xTkcEQACH24SMPxIQg/200w.webp?cid=ecf05e47gp5m9kp4rmrj8uc7hdqkyrnukxzy9q9mweh370wn&ep=v1_gifs_search&rid=200w.webp&ct=g"),
                  image: NetworkImage(character.image),
                )
              : Image.network(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  "https://media2.giphy.com/media/3zhxq2ttgN6rEw8SDx/200w.webp?cid=ecf05e47npigsbxwewvpybksbhkkdbmcqxv6dvsb5q5jxyx2&ep=v1_gifs_search&rid=200w.webp&ct=g"),
        ),
      ),
    );
  }
}
