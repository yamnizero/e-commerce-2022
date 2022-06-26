import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login : (context) => const Login(),
};
