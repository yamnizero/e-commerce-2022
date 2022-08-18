import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/core/middleware/my_middleware.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/forget_password.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/verify_code.dart';
import 'package:ecommerc_2022/view/screen/auth/login.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/reset_password.dart';
import 'package:ecommerc_2022/view/screen/auth/signup.dart';
import 'package:ecommerc_2022/view/screen/auth/forgetPassword/success_reset_password.dart';
import 'package:ecommerc_2022/view/screen/auth/success_signup.dart';
import 'package:ecommerc_2022/view/screen/auth/verify_code_signup.dart';
import 'package:ecommerc_2022/view/screen/home.dart';
import 'package:ecommerc_2022/view/screen/onboarding.dart';
import 'package:ecommerc_2022/view/test_view.dart';
import 'package:get/get.dart';

import 'view/screen/language.dart';


List<GetPage<dynamic>>? routes= [

  GetPage(name: "/", page: ()=> const Language(),middlewares: [
    MyMiddleware()
  ]) ,
  // GetPage(name: "/", page: () => TestView()),
  ///Auth
  GetPage(name: AppRoutes.login, page: ()=> const Login()) ,
  GetPage(name: AppRoutes.signUp, page: ()=> const SignUp()) ,
  GetPage(name: AppRoutes.successSignUp, page: ()=> const SuccessSignUp()) ,
  GetPage(name: AppRoutes.forgetPassword, page: ()=> const ForgetPassword()) ,
  GetPage(name: AppRoutes.verifyCode, page: ()=> const VerifyCode()) ,
  GetPage(name: AppRoutes.resetPassword, page: ()=> const ResetPassword()) ,
  GetPage(name: AppRoutes.successResetPassword, page: ()=> const SuccessResetPassword()) ,
  GetPage(name: AppRoutes.verifyCodeSignUp, page: ()=> const VerifyCodeSignUp()) ,
  ///onBoarding
  GetPage(name: AppRoutes.onBoarding, page: ()=> const OnBoarding()) ,

  ///HomePage
  GetPage(name: AppRoutes.homeScreen, page: ()=> const HomeScreen()) ,
];