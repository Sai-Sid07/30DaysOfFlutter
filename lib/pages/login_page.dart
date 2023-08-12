// ignore_for_file: prefer_const_constructors

import "package:first_flutter_app/utils/routes.dart";
import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        //When the screen size gets smaller, then a scroller will be added
        child: Column(
          //Column or Row can take in a List of Widgets which can be rendered.
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              // height: 1000, Added to check ScrollView
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4),
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 15,
                  height: 2,
                  letterSpacing: 2,
                  color: Colors.black45),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                        labelStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    onChanged: (enteredName) {
                      name = enteredName;
                      // name = name.toUpperCase();
                      setState(() => {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    // obscuringCharacter: "@", //The character which get replaced when you type anything
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                        labelStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changedButton = true;
                      });
                      await Future.delayed(Duration(seconds: 2));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      width: changedButton ? 40 : 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          // shape: changedButton ? BoxShape.circle : BoxShape.rectangle
                          borderRadius:
                              BorderRadius.circular(changedButton ? 50 : 10)),
                      child: changedButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.3,
                                fontSize: 15,
                              ),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () => {
                  //     //You can add your authentication logic inside this.
                  //     //Context is the parameter passed in the build function of this class.
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute)
                  //     // print("Hello World")
                  //   },
                  //   style: TextButton.styleFrom(
                  //       foregroundColor: Colors.white,
                  //       backgroundColor: Colors.black,
                  //       padding: EdgeInsets.all(15),
                  //       minimumSize: Size(120, 35)),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //         letterSpacing: 3, fontWeight: FontWeight.bold),
                  //   ),
                  //   // style: ButtonStyle(
                  //   //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                  //   //   backgroundColor: MaterialStatePropertyAll(Colors.black),
                  //   // ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     textAlign: TextAlign.right,
      //     style: TextStyle(
      //       fontSize: 25,
      //       color: Colors.black,
      //       fontWeight: FontWeight.bold,
      //       letterSpacing: 4,
      //       // fontStyle: FontStyle.italic
      //     )
      //   ),
      // ),
    );
  }
}
