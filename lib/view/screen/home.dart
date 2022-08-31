import 'package:ecommerc_2022/controller/home_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/link_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(HomeControllerImp());

    return Scaffold(
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget:  Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                hintText: "Find Product",
                                hintStyle: const TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Colors.grey[200]),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 60,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_active_outlined,
                              size: 30,
                              color: Colors.grey[600],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric( vertical: 15),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 150,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const ListTile(
                            title: Text(
                              "A summer supries",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),

                            ),
                            subtitle: Text(
                              "Cashback 20%",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),

                        ),
                        Positioned(
                          top: -20,
                          right: -20,
                          child: Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                              color: AppColor.secoundColor,
                              borderRadius: BorderRadius.circular(160),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: ListView.separated(
                      separatorBuilder: (context,index)=>SizedBox(width: 10,),
                      itemCount: controller.categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          height: 70,
                          width: 70,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color:AppColor.primaryColor,
                          ),
                          child: SvgPicture.network("${AppLinkApi.imagesCategories}/${controller.categories[index]['categories_image']}"),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
        ),
      )
    );
  }
}

