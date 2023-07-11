import 'package:app/Bloc_session/business_logic/cubit/characters_cubit.dart';
import 'package:app/Bloc_session/presentation/widgets/custome_appbar.dart';
import 'package:app/Bloc_session/presentation/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context)
        .getAllCharacters(); // CharactersCubit(charachterRepository:CharachterRepository(charachterServices: CharachterServices())).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(),
      body: HomeBody(),
    );
  }
}
