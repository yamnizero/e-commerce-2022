import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/resetPassword_controller.dart';
import '../../widget/auth/custom_buttom_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/customtextformauth.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'ResetPassword',
          style: Theme.of(context).textTheme.headline1!.copyWith(
            color: AppColor.grey,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView (
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextTitleAuth(text: "35".tr),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyAuth(
              text:
              "35".tr,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormAuth(
              myController: controller.password,
              hintText: "13".tr,
              iconData:Icons.lock_outline,
              label: "19".tr,

            ),
            CustomTextFormAuth(
              myController: controller.rePassword,
              hintText: "Re" + " " + "13".tr,
              iconData: Icons.lock_outline,
              label: "19".tr,

            ),
            CustomButtonAuth(
              text: "33" .tr,
              onPressed: () {

              },
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
