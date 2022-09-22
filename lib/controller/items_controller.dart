 import 'package:get/get.dart';

import '../core/class/Statusrequest.dart';
import '../core/function/handlingData_controller.dart';
import '../data/datasource/remote/items_data.dart';

abstract class ItemsController extends GetxController{

  intialData();
  changeCat(int val);
  getItems();
}

class ItemsControllerImp  extends ItemsController{

  List categories = [];
  int? selectedCategories ;
  ItemsData itemsData =ItemsData(Get.find());
  List data = [];
  late StatusRequest statusRequest;


  @override
  void onInit() {
    intialData();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCategories = Get.arguments['selectedCategories'];
    getItems();
  }



  @override
  changeCat(val) {
   selectedCategories = val;
   update();
  }

  @override
  getItems() async{
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData();
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

}