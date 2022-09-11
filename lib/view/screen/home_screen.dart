import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
           Center(
            child: Text("HomeScreen"),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: (){},
        child: const Icon(Icons.shopping_basket_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            Row(
              children: [
                MaterialButton(onPressed: (){},child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),),
                MaterialButton(onPressed: (){},child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                MaterialButton(onPressed: (){},child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),),
                MaterialButton(onPressed: (){},child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home),
                    Text("Home")
                  ],
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
