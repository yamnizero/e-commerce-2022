import 'package:ecommerc_2022/controller/cart_controller.dart';
import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:ecommerc_2022/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController{

}

class ProductDetailsControllerImp extends ProductDetailsController{

  CartController cartController = Get.put(CartController());
  late ItemsModel itemsModel;
  late StatusRequest statusRequest;
  int countItems  =0;

  intialData()async{
    statusRequest = StatusRequest.loading;
    itemsModel = Get.arguments['itemsModel'];
    countItems = await cartController.getCountItems(itemsModel.itemsId!);
    statusRequest = StatusRequest.success;
    update();
  }

  List subItems = [
    {
      "name" : "Red",
      "id" : 1,
      "active" : "1",
    },
    {
      "name" : "Black",
      "id" : 2,
      "active" : "0",
    },
    {
      "name" : "Blue",
      "id" : 3,
      "active" : "0",
    },
  ];


  add(){
    cartController.add(itemsModel.itemsId!);
    countItems++;
    update();
  }
  remove(){
    if(countItems > 0){
      cartController.delete(itemsModel.itemsId!);
      countItems--;
      update();
    }

  }


  @override
  void onInit() {
    intialData();

    super.onInit();
  }
}