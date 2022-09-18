import 'package:ecommerc_2022/controller/home_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:ecommerc_2022/view/widget/home/custom_list_categories_home.dart';
import 'package:ecommerc_2022/view/widget/home/custom_title_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_appbar.dart';
import '../widget/home/custom_card_suprise_home.dart';
import '../widget/home/custome_list_items_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());

    return  GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              CustomAppBar(
                titleAppbar: "Find Product",
                opPressedIcon: () {},
                onPressedSearch: () {},
              ),
              const CustomCardSurpriseHome(
                titleSurprise: "A summer surprise",
                bodySurprise: "Cashback 20%",
              ),
              const CustomTitleHome(
                titleHome: "Categories",
              ),
              const CustomListCategoriesHome(),
              const CustomTitleHome(
                titleHome: "Product for you",
              ),
              const CustomListItemsHome(),
            ],
          ),
        ),
      ),
    );
  }
}
