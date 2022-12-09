import 'package:ecommerc_2022/core/constant/name_routes.dart';
import 'package:ecommerc_2022/view/widget/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            CustomAppBar(
              titleAppbar: "Find Product",
              opPressedIcon: () {},
              onPressedSearch: () {},
              opPressedIconFavorite: (){
                Get.toNamed(AppRoutes.myFavorite);
              },
            ),

          ],
        ),
      ),
    );
  }
}
