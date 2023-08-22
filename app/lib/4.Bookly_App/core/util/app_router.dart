import 'package:app/4.Bookly_App/features/home/Presentation/View/book_details_view.dart';
import 'package:app/4.Bookly_App/features/home/Presentation/View/home_view.dart';
import 'package:app/4.Bookly_App/features/search/presention/view/search_view.dart';
import 'package:app/4.Bookly_App/features/splash/Presentation/View/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const BookDetailsView();
          },
        ),
        GoRoute(
          path: 'search',
          builder: (BuildContext context, GoRouterState state) {
            return const SearchView();
          },
        ),
      ],
    ),
  ],
);
