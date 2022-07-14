import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/forget_password.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/verify_code.dart';
import 'package:ecommerc_2022/view/screen/auth/login.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/reset_password.dart';
import 'package:ecommerc_2022/view/screen/auth/signup.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/success_reset_password.dart';
import 'package:ecommerc_2022/view/screen/auth/success_signup.dart';
import 'package:ecommerc_2022/view/screen/auth/verify_code_signup.dart';
import 'package:ecommerc_2022/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {

  ///Auth
  AppRoutes.login : (context) => const Login(),
  AppRoutes.signUp : (context) => const SignUp(),
  AppRoutes.successSignUp : (context) => const SuccessSignUp(),
  AppRoutes.forgetPassword : (context) => const ForgetPassword(),
  AppRoutes.verifyCode : (context) => const VerifyCode(),
  AppRoutes.resetPassword : (context) => const ResetPassword(),
  AppRoutes.successResetPassword : (context) => const SuccessResetPassword(),
  AppRoutes.verifyCodeSignUp : (context) => const VerifyCodeSignUp(),
  ///onBoarding
  AppRoutes.onBoarding : (context) => const OnBoarding(),
};
