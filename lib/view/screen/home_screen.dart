import 'package:ecommerc_2022/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: ((controller) => Scaffold(

              body: controller.listPage.elementAt(controller.currentPage),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.shopping_basket_outlined),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomAppBar(
                shape: const CircularNotchedRectangle(),
                notchMargin: 10,
                child: Row(
                  children: [
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            controller.changePage(0);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [Icon(Icons.home), Text("Home")],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            controller.changePage(1);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [Icon(Icons.home), Text("Settings")],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {
                            controller.changePage(2);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [Icon(Icons.home), Text("Profile")],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            controller.changePage(3);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [Icon(Icons.home), Text("Favorite")],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
