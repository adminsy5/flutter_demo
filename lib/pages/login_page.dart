import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String myname = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_page.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Welcome !",
            style: TextStyle(
              fontSize: 20,
              // fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    myname = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });

                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changeButton ? 50 : 150,
                    // child: Center(
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(Icons.done)
                        : Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                  ),
                ),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     // print("Hello Makwana");
                //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                //   },
                //   style: TextButton.styleFrom(minimumSize: Size(90, 40)),
                //   child: Text("Login"),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
