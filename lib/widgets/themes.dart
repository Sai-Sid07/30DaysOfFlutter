import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors
          .deepPurple, //Primary Swatch matches all the UI elements with the specified scheme
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
    )
  );
    static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme( //This is overriden if a theme is applied in nested functions
          color: Color.fromARGB(255, 255, 238, 0) //App bar
      ),
      canvasColor: Color.fromARGB(255, 0, 0, 0) 
      
  );
}
