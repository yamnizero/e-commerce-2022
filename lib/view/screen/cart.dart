import 'package:ecommerc_2022/view/widget/cart/appBar_cart.dart';
import 'package:ecommerc_2022/view/widget/cart/custom_bottom_Navigation_bar_cart.dart';
import 'package:ecommerc_2022/view/widget/cart/custom_items_cart_list.dart';
import 'package:ecommerc_2022/view/widget/cart/topcard_cart.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarCart(
        price: '1200',
        shipping: '500',
        totalPrice: '1700',
      ),
      body: ListView(
        children: [
          const TopAppBarCart(title: "My Cart",),
          const SizedBox(
            height: 10,
          ),
          const ToCardCart(message: "You Have 2 Items in Your List",),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const[
                 CustomItemsCartList(
                  name: 'MacBook M2 ',
                  price: '1100.0 \$',
                  count: '2',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
