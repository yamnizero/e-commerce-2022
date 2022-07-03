import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController{

  late TextEditingController password;
  late TextEditingController rePassword;


  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetPassword);
  }

}