import 'package:first_flutter_app/pages/home_page.dart';
import 'package:first_flutter_app/pages/login_page.dart';
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
      // home: HomePage(),
      themeMode: ThemeMode.light, //Uses the design choice mentioned inside darkTheme
      theme: ThemeData(
        primarySwatch: Colors.amber //Primary Swatch matches all the UI elements with the specified scheme
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme( //This is overriden if a theme is applied in nested functions
          color: Color.fromARGB(255, 255, 238, 0) //App bar
        ),
        canvasColor: Color.fromARGB(255, 0, 0, 0) //Background
      ),
      initialRoute: "/login",
      routes: {
        //Name of Route : 
        "/" : (context) => HomePage(), //Here an object of the class HomePage is being created
        //Equivalent of typing new HomePage()
        "/login" : (context) => LoginPage(),
      },
    );
  }
}
