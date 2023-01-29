import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/login_page.dart';
import 'package:flutter_demo/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(flutter_demo());
}

class flutter_demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
              fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute: "/home",
      routes: {
        "/" : (context) => HomePage(),
        MyRoutes.LoginRoute :(context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage()
      },
    );
  }
}
