import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/view/widget/cart/button_cart.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarCart extends StatelessWidget {
  final String price;
  final String shipping;
  final String totalPrice;
  const BottomNavigationBarCart({Key? key, required this.price, required this.shipping, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "price",
                    style: TextStyle(fontSize: 16),
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "$price \$",
                    style: TextStyle(fontSize: 16),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:const  Text(
                    "Shipping",
                    style: TextStyle(fontSize: 16),
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:  Text(
                    "$shipping \$",
                    style: const TextStyle(fontSize: 16),
                  )),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "Total price",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor),
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:  Text(
                    "$totalPrice \$",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor),
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtonCart(
            textButton: "Place Order",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
