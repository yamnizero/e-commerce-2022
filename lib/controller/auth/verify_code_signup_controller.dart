import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

  late String verifyCode;


  @override
  void onInit() {

    super.onInit();
  }


  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }

}