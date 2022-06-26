import 'package:ecommerc_2022/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../widget/language/custom_button_language.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("Choose Language",style: Theme.of(context).textTheme.headline1),
            const SizedBox(height: 20,),
            CustomButtonLanguage(
              textButton: "Ar",
              onPressed: (){},
            ),
            CustomButtonLanguage(
              textButton: "En",
              onPressed: (){},
            ),

          ],
        ),
      ),
    );
  }
}
