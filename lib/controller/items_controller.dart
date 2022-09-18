 import 'package:get/get.dart';

abstract class ItemsController extends GetxController{

  intialData();
  changeCat(int val);
}

class ItemsControllerImp  extends ItemsController{

  List categories = [];
  int? selectedCategories ;

  @override
  void onInit() {
    intialData();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectedCategories = Get.arguments['selectedCategories'];
  }



  @override
  changeCat(val) {
   selectedCategories = val;
   update();
  }

}