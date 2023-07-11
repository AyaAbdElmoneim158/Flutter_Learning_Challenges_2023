import 'package:app/Bloc_session/business_logic/cubit/characters_cubit.dart';
import 'package:app/Bloc_session/constants/color.dart';
import 'package:app/Bloc_session/presentation/widgets/custome_charachter_list.dart';
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
        if (state is CharactersLoaded) {
          return CustomeCharachterList(charchters: state.charchters);
        } else {
          return const Center(
              child: CircularProgressIndicator(color: AppColor.kYellow));
        }
      },
    );
  }
}
