import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:ecommerc_2022/core/function/handlingData_controller.dart';
import 'package:ecommerc_2022/core/services/services.dart';
import 'package:ecommerc_2022/data/datasource/remote/cart_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{

  CartData cartData = CartData(Get.find());
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();


  add(String itemsid) async {

    statusRequest = StatusRequest.loading;
    var response = await cartData.addCart(
      myServices.sharedPreferences.getString("id")!,itemsid,
    );
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        Get.rawSnackbar(
          title: "اشعار",
          messageText: const Text("تم اضافة المنتج الي السلة "),
        );
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
  }


  delete(String itemsid) async {

    statusRequest = StatusRequest.loading;
    var response = await cartData.deleteCart(
      myServices.sharedPreferences.getString("id")!,itemsid,
    );
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        Get.rawSnackbar(
          title: "اشعار",
          messageText: const Text("تم ازالة المنتج من السلة "),
        );
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
  }

  getCountItems(String itemsid) async{
    statusRequest = StatusRequest.loading;
    var response = await cartData.getCountCart(
      myServices.sharedPreferences.getString("id")!,itemsid,
    );
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        int countItems = 0;
        countItems = int.parse(response['data']);
        print("===============================");
        print("$countItems");
        return countItems;
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
  }

  view(){}
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

}