
import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetPassword/forget_password_controller.dart';
import '../../../widget/auth/custom_buttom_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_title_auth.dart';
import '../../../widget/auth/customtextformauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '14'.tr,
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
            CustomTextTitleAuth(text: "27".tr),
            const SizedBox(
              height: 10,
            ),
            CustomTextBodyAuth(
              // please Enter Your Email Address To Recive A verification code
              text:
              "29".tr,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFormAuth(
              valid: (val){

              },
              isNumber: false,
              myController: controller.email,
              hintText: "12".tr,
              iconData: Icons.email_outlined,
              label:"18".tr,

            ),
            CustomButtonAuth(
              text: "30".tr,
              onPressed: () {
                controller.checkEmail();
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
