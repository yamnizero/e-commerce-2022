import 'package:ecommerc_2022/controller/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_appbar.dart';
import '../widget/items/Custom_list_categories_items.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemsControllerImp  controller =  Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppBar(
              titleAppbar: "Find Product",
              opPressedIcon: () {},
              onPressedSearch: () {},
            ),
            const SizedBox(height: 20,),
            const CustomListCategoriesItems(),
          ],
        ),
      ),
    );
  }
}
