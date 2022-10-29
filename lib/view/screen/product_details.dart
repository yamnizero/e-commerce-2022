import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerc_2022/controller/product_details_controller.dart';
import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/data/model/items_model.dart';
import 'package:ecommerc_2022/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                ),
               Positioned(
                   top: 50.0,
                   right: Get.width / 8,
                   left: Get.width / 8,
                   child:  Hero(
                     tag: "${controller.itemsModel.itemsId}",
                     child: CachedNetworkImage(
                       imageUrl: AppLinkApi.imagesItems +
                           "/" +
                           controller.itemsModel.itemsImage!,
                       height: 250,
                       fit: BoxFit.fill,
                     ),
                   ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
