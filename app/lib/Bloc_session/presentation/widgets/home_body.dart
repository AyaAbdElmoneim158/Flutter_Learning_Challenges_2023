import 'package:app/Bloc_session/business_logic/cubit/characters_cubit.dart';
import 'package:app/Bloc_session/constants/color.dart';
import 'package:app/Bloc_session/presentation/widgets/custom_character_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<CharactersCubit>(context);
        if (state is CharactersLoaded) {
          return CustomCharacterList(characters: state.characters);
        } else if (state is CharactersSearched) {
          return CustomCharacterList(characters: state.characters);
        } else if (!(cubit.isSearch)) {
          return CustomCharacterList(characters: cubit.getAllCharacters());
        } else {
          return const Center(
              child: CircularProgressIndicator(color: AppColor.kYellow));
        }
      },
    );
  }
}