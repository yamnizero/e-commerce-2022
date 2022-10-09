import 'package:ecommerc_2022/controller/items_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:ecommerc_2022/data/model/items_model.dart';
import 'package:ecommerc_2022/view/widget/items/custom_list_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_appbar.dart';
import '../widget/items/Custom_list_categories_items.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
            titleAppbar: "Find Product",
            opPressedIcon: () {},
            onPressedSearch: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomListCategoriesItems(),
          GetBuilder<ItemsControllerImp>(
              builder: (controller) => HandlingDataView(
                  statusRequest: controller.statusRequest,
                  widget: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 0.7),
                      itemBuilder: (context, index) {
                        return CustomListItems(
                          itemsModel:
                              ItemsModel.fromJson(controller.data[index]),
                        );
                      }))),
        ]),
      ),
    );
  }
}
