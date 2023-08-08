import "package:first_flutter_app/home_page.dart";
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
    return MaterialApp(home: HomePage());
  }
}
