import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/view/screen/auth/forget_password.dart';
import 'package:ecommerc_2022/view/screen/auth/login.dart';
import 'package:ecommerc_2022/view/screen/auth/reset_password.dart';
import 'package:ecommerc_2022/view/screen/auth/signup.dart';
import 'package:ecommerc_2022/view/screen/auth/success_reset_password.dart';
import 'package:ecommerc_2022/view/screen/auth/success_signup.dart';
import 'package:ecommerc_2022/view/screen/auth/verifyCode.dart';
import 'package:ecommerc_2022/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {

  ///Auth
  AppRoutes.login : (context) => const Login(),
  AppRoutes.signUp : (context) => const SignUp(),
  AppRoutes.successSignUp : (context) => const SuccessSignUp(),
  ///forgetPassword
  AppRoutes.forgetPassword : (context) => const ForgetPassword(),
  AppRoutes.verifyCode : (context) => const VerifyCode(),
  AppRoutes.resetPassword : (context) => const ResetPassword(),
  AppRoutes.successResetPassword : (context) => const SuccessResetPassword(),
  ///onBoarding
  AppRoutes.onBoarding : (context) => const OnBoarding(),
};
