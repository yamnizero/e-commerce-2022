import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      margin: const EdgeInsets.only(bottom: 30),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
            horizontal: 100, vertical: 2),
        textColor: Colors.white,
        color: AppColor.primaryColor,
        onPressed: () {},
        child: const Text(
          "Continue",
          style: TextStyle(),
        ),
      ),
    );
  }
}
