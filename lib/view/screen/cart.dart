import 'package:ecommerc_2022/controller/cart_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:ecommerc_2022/view/widget/cart/appBar_cart.dart';
import 'package:ecommerc_2022/view/widget/cart/custom_bottom_Navigation_bar_cart.dart';
import 'package:ecommerc_2022/view/widget/cart/custom_items_cart_list.dart';
import 'package:ecommerc_2022/view/widget/cart/topcard_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      bottomNavigationBar:  GetBuilder<CartController>(
        builder: (controller) => BottomNavigationBarCart(
        price: '${cartController.priceOrder}',
        shipping: '500',
        totalPrice: '1700',
      ),),
      body: GetBuilder<CartController>(
        builder: ((controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView(
              children: [
                const TopAppBarCart(
                  title: "My Cart",
                ),
                const SizedBox(
                  height: 10,
                ),
                 ToCardCart(
                  message: "You Have ${cartController.totalCountItems} Items in Your List",
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children:  [
                      ...List.generate(cartController.data.length, (index) => CustomItemsCartList(
                        onAdd: () async{
                          await cartController.add(cartController.data[index].itemsId!);
                          cartController.refreshPage();
                        },
                        onRemove: ()async{
                          await cartController.delete(cartController.data[index].itemsId!);
                          cartController.refreshPage();
                        },
                        imageName: '${cartController.data[index].itemsImage}',
                        name: '${cartController.data[index].itemsName}',
                        price: '${cartController.data[index].itemsprice} \$',
                        count: '${cartController.data[index].countitems}',
                      ))
                    ],
                  ),
                )
              ],
            ))),
      ),
    );
  }
}
