import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/core/function/handlingData_controller.dart';
import 'package:ecommerc_2022/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

import '../core/services/services.dart';

abstract class HomeController extends GetxController{
  initialData();
  getData();
  goToItems(List categories,  int selectedCategories);

}

class  HomeControllerImp extends HomeController{

  MyServices myServices = Get.find();
  String? username ;
  HomeData homeData =HomeData(Get.find());



  List categories = [];
  List items = [];
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
        items.addAll(response['items']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToItems(categories,  selectedCategories) {
   Get.toNamed(AppRoutes.itemsPage,arguments: {
     "categories" : categories,
     "selectedCategories" : selectedCategories,
   });
  }

}