import 'package:flutter/material.dart';
import 'package:flutter_demo/models/items.dart';

class ItemWidget extends StatelessWidget {
  final ItemsOfApp itemsOfApp;

  const ItemWidget({super.key, required this.itemsOfApp});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        onTap: () {
          print("${itemsOfApp.name} Pressed");
        },
        leading: Image.network(itemsOfApp.image),
        title: Text(itemsOfApp.name),
        subtitle: Text(itemsOfApp.desc),
        trailing: Text(
          "\$${itemsOfApp.price}",
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
