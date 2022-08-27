import 'package:get/get.dart';

import '../core/services/services.dart';

class HomeController extends GetxController{

}

class  HomeControllerImp extends HomeController{

  MyServices myServices = Get.find();
  String? username ;

  initialData(){
    username = myServices.sharedPreferences.getString("username");
  }
  @override
  void onInit() {
    initialData();
    super.onInit();
  }

}