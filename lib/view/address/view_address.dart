import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewAddress extends StatelessWidget {
  const ViewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //العناوين
      appBar: AppBar(

        title: const Text("Address"),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(AppRoutes.addAddress);
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        child: ListView(children: [],),
      ),

    );
  }
}
