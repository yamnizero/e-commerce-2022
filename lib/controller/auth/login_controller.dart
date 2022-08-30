import 'package:ecommerc_2022/core/class/crud.dart';
import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/core/services/services.dart';
import 'package:ecommerc_2022/data/datasource/remote/auth/login.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/Statusrequest.dart';
import '../../core/function/handlingData_controller.dart';

abstract class LoginController extends GetxController{
   login();
   goToSignUp();
   goToForgetPassword();
}

class LoginControllerImp extends LoginController{
    LoginData loginData = LoginData(Get.find());
    GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;
  MyServices myServices = Get.find();

    StatusRequest statusRequest = StatusRequest.none;

  showPassword(){
    isShowPassword = isShowPassword == true  ? false : true;
    update();
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value){
      print(value);
      String? token = value;
    });
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
  login()  async {
    if(formState.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text );
      print("========================== $response controller");
      statusRequest  = handlingData(response);
      if(StatusRequest.success == statusRequest){
        if(response['status'] == "success"){
          // data.addAll(response['data']);
          myServices.sharedPreferences.setString("id", response['data']['users_id']);
          myServices.sharedPreferences.setString("username", response['data']['users_name']);
          myServices.sharedPreferences.setString("email", response['data']['users_email']);
          myServices.sharedPreferences.setString("password", response['data']['users_phone']);
          //
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoutes.homeScreen);
        }else{
          Get.defaultDialog(title: "Warning" , middleText: "Email Or Password Not Correct") ;
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }else{
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