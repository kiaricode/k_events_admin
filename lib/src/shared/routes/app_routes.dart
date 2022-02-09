import 'package:flutter/material.dart';

class AppRoutes {
  static const home = "/home";
  static const splash = "/splash";
  static const getStarted = "/getStarted";
  static const login = "/login";
  static const register = "/register";
  static const games = "/games";
  static const notFound = "/notfound";
  static const gameInfo = "/game/info";
  static const gameRoletaRussa = "/game/roletarussa";
  static const gameRoletaRussaBet = "/game/roletarussa/bet";
  static const menu = "/menu";
  static const notifications = "/notifications";
  static const loginWaitScreen = "/account";

  static Map<String, WidgetBuilder> routes(BuildContext context) {
    return {
      // splash: (context) => const SplashPage(),
      // getStarted: (context) => const GetStartedPage(),
      // login: (context) => const LoginPage(),
    };
  }
}
