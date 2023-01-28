import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';

void main() {
  runApp(flutter_demo());
}

class flutter_demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}
