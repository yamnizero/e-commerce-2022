import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../data/datasource/static/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Text(
                onBoardingList[index].title!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 80,
              ),
              Image.asset(onBoardingList[index].image!,width:   200,height: 250,fit: BoxFit.fill,),
              const SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[index].body!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(height: 2,color: AppColor.grey,fontWeight: FontWeight.bold,fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
