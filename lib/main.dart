import 'package:first_flutter_app/pages/home_page.dart';
import 'package:first_flutter_app/pages/login_page.dart';
import 'package:first_flutter_app/utils/routes.dart';
import 'package:first_flutter_app/widgets/themes.dart';
import "package:flutter/material.dart";

void main() {
  //Main Entry Point
  //runApp is the method to call your class with the main app code
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light, //Uses the design choice mentioned inside darkTheme
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/home",
      routes: {
        //Name of Route : 
        MyRoutes.homeRoute : (context) => const HomePage(), //Here an object of the class HomePage is being created
        //Equivalent of typing new HomePage()
        MyRoutes.loginRoute : (context) => LoginPage(),
        //Using the static variable created inside utils/routes.dart
        //Not a good practice but used to save memory and not have objects created each and every time.
      },
    );
  }
}
