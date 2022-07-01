import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/view/screen/auth/login.dart';
import 'package:ecommerc_2022/view/screen/auth/signup.dart';
import 'package:ecommerc_2022/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login : (context) => const Login(),
  AppRoutes.signUp : (context) => const SignUp(),
  AppRoutes.onBoarding : (context) => const OnBoarding(),
};
