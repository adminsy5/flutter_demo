import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/drawer.dart';

class HomePage extends StatelessWidget {
 final String surname = "Makwana";
 final int age= 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),

      body: Center(
        child: Container(
          child: Text("Hello My Name is Piyush $surname & age is $age !"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
