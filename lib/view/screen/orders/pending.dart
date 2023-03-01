import 'package:ecommerc_2022/controller/orders/pending_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/data/model/orders_model.dart';
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
        child: GetBuilder<OrdersPendingController>(
          builder: ((controller) => HandlingDataView(statusRequest: controller.statusRequest, widget: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: ((context, index) => CardOrdersList(
              listData: controller.data[index],
            )),
          ))
          ),
        ),
      ),
    );
  }
}

class CardOrdersList extends GetView<OrdersPendingController> {
  final OrdersModel  listData;
  const CardOrdersList({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Order Number : #${listData.ordersId}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
             Text(
              "Order Type : ${listData.ordersType}",
            ),
             Text(
              "Order Price : ${listData.ordersPrice} \$",
            ),
             Text(
              " DeliveryPrice : ${listData.ordersPricedelivery} \$",
            ),
             Text(
              " Payment Method : ${listData.ordersPaymentmethod}",
            ),
            Text(

              " Orders Status : ${controller.printOrderStatus(listData.ordersStatus!)}",
            ),
            const Divider(),
            Row(
              children: [
                 Text(
                  "Total Price:  ${listData.ordersTotalprice} \$",
                  style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
                const Spacer(),
                MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    "Details",
                  ),
                  color: AppColor.thirdColor,
                  textColor: AppColor.secondColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
