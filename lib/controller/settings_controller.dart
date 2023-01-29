import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/core/services/services.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController{
  MyServices myServices = Get.find();


  logOut(){
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoutes.login);
  }


}