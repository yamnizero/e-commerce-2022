import 'package:ecommerc_2022/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController{

}
class ProductDetailsControllerImp extends ProductDetailsController{

  late ItemsModel itemsModel;

  intialData(){
    itemsModel = Get.arguments['itemsModel'];
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
  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}