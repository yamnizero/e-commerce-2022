import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:ecommerc_2022/core/function/handlingData_controller.dart';
import 'package:ecommerc_2022/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

import '../core/services/services.dart';

abstract class HomeController extends GetxController{
  initialData();
  getData();

}

class  HomeControllerImp extends HomeController{

  MyServices myServices = Get.find();
  String? username ;
  HomeData homeData =HomeData(Get.find());


  // List data = [];
  List categories = [];
  late StatusRequest statusRequest;

  @override
  initialData(){
    username = myServices.sharedPreferences.getString("username");
  }
  @override
  void onInit() {
    getData();
    initialData();

    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        categories.addAll(response['categories']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

}