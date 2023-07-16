import 'package:app/Bloc_session/business_logic/cubit/characters_cubit.dart';
import 'package:app/Bloc_session/constants/string.dart';
import 'package:app/Bloc_session/data/repository/character_repository.dart';
import 'package:app/Bloc_session/data/services/character_services.dart';
import 'package:app/Bloc_session/presentation/screens/details_screen.dart';
import 'package:app/Bloc_session/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppString.homeRoutes:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => CharactersCubit(
              characterRepository: CharacterRepository(
                characterServices: CharacterServices(),
              ), //! Add to constructor...................
            ),
            child: const HomeScreen(),
          ),
        );

      // case AppString.detailsRoutes:
      //   return MaterialPageRoute(
      //     builder: (context) => const DetailsScreen(),
      //   );
      // default:
    }
    return null;
  }
}
