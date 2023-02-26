import 'package:ecommerc_2022/controller/checkout_controller.dart';
import 'package:ecommerc_2022/core/class/handling_data_view.dart';
import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/core/constant/imageasset.dart';
import 'package:ecommerc_2022/view/widget/checkOut/card_delivery_type.dart';
import 'package:ecommerc_2022/view/widget/checkOut/card_payment_method.dart';
import 'package:ecommerc_2022/view/widget/checkOut/card_shipping_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckOutController controller = Get.put(CheckOutController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckOut"),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MaterialButton(
          color: AppColor.secondColor,
          textColor: Colors.white,
          onPressed: () {
            controller.checkOut();
          },
          child: const Text(
            "CheckOut",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
      body: GetBuilder<CheckOutController>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: Container(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  const Text(
                    "Choose Payment Method ",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        controller.choosesPaymentMethod("0");
                      },
                      child:  CardPaymentMethodCheckOut(
                        title: "Cash On Delivery",
                        isActive: controller.paymentMethod == "0" ? true : false,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                      onTap: () {
                        controller.choosesPaymentMethod("1");
                      },
                      child:  CardPaymentMethodCheckOut(
                        title: "Payment Cards",
                        isActive: controller.paymentMethod == "1" ? true : false,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Choose Delivery Type ",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      InkWell(
                        onTap: () {
                          controller.choosesDeliveryType("0");
                        },
                        child: CardDeliveryTypeCheckOut(
                          title: "Delivery",
                          isActive: controller.deliveryType == "0" ? true : false,
                          imageName: AppImageAsset.deliveryImage2,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          controller.choosesDeliveryType("1");
                        },
                        child: CardDeliveryTypeCheckOut(
                          title: "Receive",
                          isActive: controller.deliveryType == "1" ? true : false,
                          imageName: AppImageAsset.driveThroughImage,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if(controller.deliveryType == "0")
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shipping Address",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ...List.generate(controller.dataAddress.length, (index) =>InkWell(
                        onTap: () {
                          controller.choosesShippingAddress(controller.dataAddress[index].addressId!);
                        },
                        child: CardShippingAddressCheckOut(
                          title: "${controller.dataAddress[index].addressName}",
                          body: " city: ${controller.dataAddress[index].addressCity}  street: ${controller.dataAddress[index].addressStreet}",
                          isActive: controller.addressId == controller.dataAddress[index].addressId ? true :false,
                        ),
                      )),

                    ],
                  )

                ],
              ),
            )),
      ),
    );
  }
}
