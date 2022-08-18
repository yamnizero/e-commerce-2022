import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomeScreen"),),
      body: Container(child: const Center(child:  Text("Home",style: TextStyle(fontSize: 40),)),),
    );
  }
}
