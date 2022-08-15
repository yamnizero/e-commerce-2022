import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:get/get.dart';
import '../core/function/handlingData_controller.dart';
import '../data/datasource/remote/test_data.dart';

class TestController extends GetxController{

  TestData testData =TestData(Get.find());

  List data = [];
  late StatusRequest statusRequest;
  getData()async{
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      data.addAll(response['data']);
    }
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}