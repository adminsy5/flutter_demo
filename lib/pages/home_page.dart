import 'package:flutter/material.dart';
import 'package:flutter_demo/models/items.dart';
import 'package:flutter_demo/widgets/drawer.dart';
import 'package:flutter_demo/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final String surname = "Makwana";
  final int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: ItemsOfApp.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(itemsOfApp: ItemsOfApp.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
