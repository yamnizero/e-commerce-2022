import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerc_2022/controller/items_controller.dart';
import 'package:ecommerc_2022/core/function/translate_date_base.dart';
import 'package:ecommerc_2022/data/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../link_api.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({Key? key,required this.itemsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

          return InkWell(
            onTap: (){
              controller.goToPageProductDetails(itemsModel);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "${itemsModel.itemsId}",
                      child: CachedNetworkImage(
                        imageUrl: AppLinkApi.imagesItems + "/" + itemsModel.itemsImage!,
                        height: 100,
                        fit: BoxFit.fill ,
                      ),
                    ),
                     Text(
                      translateDataBase(itemsModel.itemsNameAr!,  itemsModel.itemsName!),
                      style: const TextStyle(
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         const Text(
                          "Rating 3.5",
                          textAlign: TextAlign.center,
                    ),
                         Container(
                           height: 22,
                           alignment: Alignment.bottomCenter,
                           child: Row(
                             children: [
                               ...List.generate(5, (index) => const Icon(Icons.star,size: 15,))
                             ],
                           ),
                         )
                       ],
                     ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "${itemsModel.itemsPrice} \$",
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 16,
                              fontFamily: "sans",
                              fontWeight: FontWeight.bold),
                        ),
                        IconButton(onPressed: (){},icon:  const Icon(Icons.favorite,color: AppColor.primaryColor,),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
