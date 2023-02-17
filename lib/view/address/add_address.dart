import 'package:ecommerc_2022/controller/address/add_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddAddressController controllerPage = Get.put(AddAddressController());
    return Scaffold(
      //العناوين
      appBar: AppBar(
        title: const Text("Add new address"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Container(
        child: GetBuilder<AddAddressController>(
          builder: (((controllerPage) => HandlingDataView(
              statusRequest: controllerPage.statusRequest,
              widget: Column(
                children: [
                 if(controllerPage.kGooglePlex != null) Expanded(
                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: controllerPage.kGooglePlex!,
                      onMapCreated: (GoogleMapController controllerMap) {
                        controllerPage.completerController!
                            .complete(controllerMap);
                      },
                    ),
                  )
                ],
              )))),
        ),
      ),
    );
  }
}

//AIzaSyCC2oJDcmAT4Hy7M6MPKmUh5RCwC5W-F6s
