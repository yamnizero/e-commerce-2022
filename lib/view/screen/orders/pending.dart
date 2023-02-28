import 'package:ecommerc_2022/controller/orders/pending_controller.dart';
import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PendingOrders extends StatelessWidget {
  const PendingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OrdersPendingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pending Orders"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const   Text(
                      "Order Number : #77",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const  Divider(),
                    const  Text("Order Type : Delivery",),
                    const Text("Order Price : 200 \$",),
                    const  Text(" DeliveryPrice : 20 \$",),
                    const Text(" Payment Method : Cash On Delivery",),
                   const Divider(),
                    Row(
                      children: [
                         const Text(
                          "Total Price:  650 \$",
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                       const  Spacer(),
                        MaterialButton(
                            onPressed: (){},
                          child: const Text("Details",),
                          color: AppColor.thirdColor,
                          textColor: AppColor.secondColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
