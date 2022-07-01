import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String label;
  final IconData iconData;
  final TextEditingController? myController;

  const CustomTextFormAuth(
      {Key? key,
      required this.hintText,
      required this.label,
      required this.iconData,
        required this.myController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(label)),
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
