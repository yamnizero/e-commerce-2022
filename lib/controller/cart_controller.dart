import 'package:ecommerc_2022/core/class/Statusrequest.dart';
import 'package:ecommerc_2022/core/function/handlingData_controller.dart';
import 'package:ecommerc_2022/core/services/services.dart';
import 'package:ecommerc_2022/data/datasource/remote/cart_data.dart';
import 'package:ecommerc_2022/data/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{

  CartData cartData = CartData(Get.find());
  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  List<CartModel> data =[];
  double priceOrder =0.0;
  int totalCountItems = 0;


  add(String itemsid) async {

    statusRequest = StatusRequest.loading;
    update();
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
    update();
  }


  delete(String itemsid) async {

    statusRequest = StatusRequest.loading;
    update();
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
    update();
  }


  resetVarCart(){
    totalCountItems = 0;
    priceOrder = 0.0;
    data.clear();
  }
  refreshPage(){
    resetVarCart();
    view();
  }

  view() async{
    statusRequest = StatusRequest.loading;
    update();
    var response = await cartData.viewCart(
      myServices.sharedPreferences.getString("id")!,
    );
    print("========================== $response controller");
    statusRequest  = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] == "success"){
        if(response['datacart']['status'] == 'success'){
          List dataResponse = response['datacart']['data'] ;
          Map dataResponseCountPrice = response['countprice'] ;
          data.clear();
          data.addAll(dataResponse.map((e) => CartModel.fromJson(e)));
          totalCountItems = int.parse(dataResponseCountPrice['totalcount']);
          priceOrder = double.parse(dataResponseCountPrice['totalprice']);
        }
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


  @override
  void onInit() {
    view();
    // TODO: implement onInit
    super.onInit();
  }

}