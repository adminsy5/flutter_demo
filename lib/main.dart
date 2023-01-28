import 'package:flutter/material.dart';

void main() {
  runApp(flutter_demo());
}

class flutter_demo extends StatelessWidget {
  String surname = "Makwana";
  int  age= 19;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Hello My Name is Piyush $surname & age is $age !"),
          ),
        ),
      ),
    );
  }
}
