import "package:first_flutter_app/widgets/drawer.dart";
import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const double float = 2.0;
    const String name = "Welcome to ";
    const String name2 = " days of Flutter ";

    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        title: const Text("Catalog App"),
        foregroundColor: Color.fromARGB(255, 0, 0, 0), //Title Color
      ),
      body: Center(
        child: Container(
          child: const Text(
              // "$name$days${"${name2} (Complex String Interpolation)"}$float"),
              "$name$days$name2$float"),
        ),
      ),
      drawer: const MyDrawer(), //Hamburger Menu
    );
  }
}
