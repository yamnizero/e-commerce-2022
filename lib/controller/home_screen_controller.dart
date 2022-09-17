import 'package:ecommerc_2022/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController{

  changePage(int currentPage);
}

class HomeScreenControllerImp extends HomeScreenController{

  int currentPage =0;

  List<Widget> listPage =[
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("Setting"),)],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("Profile"),)],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: Text("Favorite"),)],
    ),
  ];

  List titleBottomAppbar =[
    "Home",
    "Setting",
    "Profile",
    "Favorite",
  ];


  @override
  changePage(int i) {
    currentPage = i ;
    update();
  }

}