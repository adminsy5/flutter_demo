import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/login_page.dart';
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
      // initialRoute: "/home",
      routes: {
        "/" : (context) => LoginPage(),
        "/login":(context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}
