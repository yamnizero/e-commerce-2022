import 'package:ecommerc_2022/core/services/services.dart';
import 'package:ecommerc_2022/test.dart';
import 'package:ecommerc_2022/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: AppColor.black),
          headline2: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,color: AppColor.black),
          bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14),
          bodyText2: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14),
        ),
        primarySwatch: Colors.blue,
      ),
      home:
      const  Language(),
      // const  Test(),
      routes: routes,
    );
  }
}
