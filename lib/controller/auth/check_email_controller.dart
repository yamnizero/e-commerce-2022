import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController{
  checkEmail();
  goToSuccessSignUP();
}

class CheckEmailControllerImp extends CheckEmailController{

  late TextEditingController email;


  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  checkEmail() {}

  @override
  goToSuccessSignUP() {
    Get.offNamed(AppRoutes.successSignUp);
  }

}