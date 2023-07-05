// Route<dynamic>? Function(RouteSettings)? onGenerateRoute

import 'package:app/Bloc_session/presentation/screens/details_screen.dart';
import 'package:app/Bloc_session/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case '/details':
        return MaterialPageRoute(
          builder: (context) => const DetailsScreen(),
        );
      // default:
    }
    return null;
  }
}
