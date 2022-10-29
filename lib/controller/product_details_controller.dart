import 'package:ecommerc_2022/data/model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController{

}
class ProductDetailsControllerImp extends ProductDetailsController{

  late ItemsModel itemsModel;

  intialData(){
    itemsModel = Get.arguments['itemsModel'];
  }
  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}