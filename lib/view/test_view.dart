import 'package:ecommerc_2022/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/class/Statusrequest.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Titile"),
      ),
      body:  GetBuilder<TestController>(
        builder: (controller){
          if(controller.statusRequest == StatusRequest.loading){
            return const Center(child:  Text("Loading"));
          }else if(controller.statusRequest == StatusRequest.offlinefailure){
            return const Center(child:  Text("Offline Failure"));
          }else if(controller.statusRequest == StatusRequest.serverfailure){
            return const Center(child:  Text("Server Failure"));
          }else {
            return ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context,index){
                  return Text("${controller.data}");

            });
          }
        },
      ),
    );
  }
}
