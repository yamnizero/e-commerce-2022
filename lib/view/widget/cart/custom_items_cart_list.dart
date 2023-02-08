import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class CustomItemsCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  const CustomItemsCartList({Key? key, required this.name, required this.price, required this.count,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Image.asset(
                  AppImageAsset.avatar,
                  height: 90,
                  fit: BoxFit.cover,
                )),
             Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(name,
                      style: const TextStyle(fontSize: 15)),
                  subtitle: Text(
                    price,
                    style: const TextStyle(
                        color: AppColor.primaryColor, fontSize: 17),
                  ),
                )),
            Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                    Container(
                        height: 30,
                        child:  Text(
                          count,
                          style: const TextStyle(fontFamily: "sans"),
                        )),
                    Container(
                      height: 25,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
