import 'package:flutter/material.dart';

class ViewAddress extends StatelessWidget {
  const ViewAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //العناوين
      appBar: AppBar(

        title: const Text("Address"),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: Container(
        child: ListView(children: [],),
      ),

    );
  }
}
