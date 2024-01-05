import 'package:git_mobile/src/features/home_screen/home_screen.dart';
import 'package:git_mobile/src/features/login_screen/login_screen.dart';
import 'package:git_mobile/src/features/project_repo_screen/project_screen.dart';
import '../../src/routing/route_constants.dart';
import 'package:flutter/material.dart';

import '../features/splash/splash_screen.dart';

class RouteManager {
  MaterialPageRoute<dynamic> route(RouteSettings settings) {
    dynamic data = settings.arguments != null ? settings.arguments ?? {} : {};

    switch (settings.name) {
      case RouteConstants.splashScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstants.splashScreen),
            builder: (context) => const SplashScreen());
      case RouteConstants.homeScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstants.homeScreen),
            builder: (context) => const HomeScreen());
      case RouteConstants.projectScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstants.projectScreen),
            builder: (context) => const ProjectScreen());
      case RouteConstants.loginScreen:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstants.loginScreen),
            builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
            settings: const RouteSettings(name: RouteConstants.splashScreen),
            builder: (context) => const SplashScreen());
    }
  }
}

RouteFactory get onGenerateRoute => RouteManager().route;
