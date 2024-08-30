import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:samh_task_app/presentation/screens/home_screen.dart';
import 'package:samh_task_app/presentation/screens/layout_screen.dart';
import 'package:samh_task_app/presentation/screens/search_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

abstract class Routes {
  static const layout = "layout";
  static const homeScreen = "homeScreen";
  static const searchScreen = "searchScreen";
}

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: navigatorKey,
  initialLocation: Routes.layout.withSlash,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.homeScreen.withSlash,
      name: Routes.homeScreen,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: Routes.layout.withSlash,
      name: Routes.layout,
      builder: (context, state) {
        return const LayoutScreen();
      },
    ),
    GoRoute(
      path: Routes.searchScreen.withSlash,
      name: Routes.searchScreen,
      builder: (context, state) {
        return const SearchScreen();
      },
    ),
  ],
);

extension RemoveSlash on String {
  String get removeSlash {
    try {
      if (startsWith("/")) {
        return substring(1);
      } else {
        return this;
      }
    } catch (e) {
      return this;
    }
  }
}

extension AddSlash on String {
  String get withSlash {
    try {
      if (startsWith("/")) {
        return this;
      } else {
        return "/$this";
      }
    } catch (e) {
      return this;
    }
  }
}
