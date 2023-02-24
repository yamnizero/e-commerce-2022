import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:ecommerc_2022/core/function/handlingData_controller.dart';
import 'package:ecommerc_2022/core/services/services.dart';
import 'package:ecommerc_2022/data/datasource/remote/address_data.dart';
import 'package:ecommerc_2022/data/model/address_model.dart';
import 'package:get/get.dart';

class CheckOutController extends GetxController {

  AddressData addressData = Get.put(AddressData(Get.find()));

  MyServices myServices = Get.find();

  StatusRequest statusRequest = StatusRequest.none;

  String? paymentMethod;
  String? deliveryType;
  String? addressid;
  List<AddressModel> dataAddress = [];

  choosesPaymentMethod(String val){
    paymentMethod =val;
    update();
  }

  choosesDeliveryType(String val) {
    deliveryType =val;
    update();
  }

  choosesShippingAddress(String val){
    addressid =val;
    update();
  }

  getShippingAddress()async{
    statusRequest = StatusRequest.loading;
    var response = await addressData.getData(
      myServices.sharedPreferences.getString("id")!
    );
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        List listData = response['data'];
        dataAddress.addAll(listData.map((e) => AddressModel.fromJson(e)));
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getShippingAddress();
    super.onInit();
  }

}
