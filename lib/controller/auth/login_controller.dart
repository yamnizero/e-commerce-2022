import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
   login();
   goToSignUp();
   goToForgetPassword();
}

class LoginControllerImp extends LoginController{
    GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;

  showPassword(){
    isShowPassword = isShowPassword == true  ? false : true;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print(" Valid");
    }else{
      print("not Valid");
    }
  }

  @override
  goToSignUp() {
  Get.offNamed(AppRoutes.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }

}