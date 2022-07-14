import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  singUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController{
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;


  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    username.dispose();
    super.dispose();
  }

  @override
  singUp() {
    if(formState.currentState!.validate()){
      Get.offNamed(AppRoutes.verifyCodeSignUp);
      // Get.delete<SignUpControllerImp>();
    }else{
      print("Not Valid");
    }

  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }

}