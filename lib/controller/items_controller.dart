 import 'package:get/get.dart';

import '../core/class/Statusrequest.dart';
import '../core/function/handlingData_controller.dart';
import '../data/datasource/remote/items_data.dart';

abstract class ItemsController extends GetxController{

  intialData();
  changeCat(int val,String catVal);
  getItems(String categoryId );
}

class ItemsControllerImp  extends ItemsController{

  List categories = [];
  String? catId ;
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
    catId = Get.arguments['catId'];
    getItems(catId!);
  }



  @override
  changeCat(val ,catVal) {
   selectedCategories = val;
   catId= catVal;
   getItems(catId!);
   update();
  }

  @override
  getItems(categoryId) async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData(categoryId);
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