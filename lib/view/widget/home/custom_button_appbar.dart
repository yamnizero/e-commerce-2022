import 'package:flutter/material.dart';

class CustomButtonAppBar extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final String textButton;
  final Color colorAppBar;
  const CustomButtonAppBar({Key? key, required this.onPressed, required this.iconData, required this.textButton, required this.colorAppBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:  [Icon(iconData,color: colorAppBar,), Text(textButton,style: TextStyle(color: colorAppBar),)],
      ),
    );
  }
}
