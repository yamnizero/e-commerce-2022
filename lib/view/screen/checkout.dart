import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:ecommerc_2022/core/constant/imageasset.dart';
import 'package:ecommerc_2022/view/widget/checkOut/card_delivery_type.dart';
import 'package:ecommerc_2022/view/widget/checkOut/card_payment_method.dart';
import 'package:ecommerc_2022/view/widget/checkOut/card_shipping_address.dart';
import 'package:flutter/material.dart';


class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckOut"),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: MaterialButton(
          color: AppColor.secondColor,
          textColor: Colors.white,
          onPressed: () {},
          child: const Text(
            "CheckOut",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text("Choose Payment Method ", style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold, fontSize: 16,),),
            const CardPaymentMethodCheckOut(title: "Cash On Delivery", isActive: true,),
            const SizedBox(height: 10,),
            const CardPaymentMethodCheckOut(title: "Payment Cards", isActive: false,),
            const SizedBox(height: 20,),
            const Text("Choose Delivery Type ", style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold, fontSize: 16,
            ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                CardDeliveryTypeCheckOut(title: "Delivery", isActive: true, imageName: AppImageAsset.deliveryImage2,),
                SizedBox(width: 10,),
                CardDeliveryTypeCheckOut(title: "Revice", isActive: false, imageName: AppImageAsset.driveThroughImage,),
              ],
            ),
            const SizedBox(height: 20,),
            const Text("Shipping Address", style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold, fontSize: 16,),),
            const SizedBox(height: 10,),
            const CardShippingAddressCheckOut(title: "Home", body: "Bahry Street One Building  23", isActive: true,
            ),
            const CardShippingAddressCheckOut(title: "Company", body: "Bahry Street One Building  23", isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
