// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //InitialRoute
  static const welcome = RoutesString.welcomeScreen;

  //getPages
  static final routes = [
    GetPage(
      name: RoutesString.welcomeScreen,
      page: () =>  WelcomeScreen(),
    ),
    GetPage(
      name: RoutesString.loginScreen,
      page: () =>  LoginScreen(),
    ),
    GetPage(
      name: RoutesString.signUpScreen,
      page: () =>  SignUpScreen(),
    ),
  ];
}

class RoutesString {
  static const welcomeScreen = "/welcomeScreen";
  static const loginScreen = "/loginScreen";
  static const signUpScreen = "/signUpScreen";
}
