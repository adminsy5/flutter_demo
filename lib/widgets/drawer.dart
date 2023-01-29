import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://d1fdloi71mui9q.cloudfront.net/anLhW79TvWmIHGkCnY1f_63Bn10BTYgMsUDrS";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Piyush Makwana"),
              accountEmail: Text("mkpiyush01@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.black),
              textScaleFactor: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
