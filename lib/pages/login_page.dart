import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
          "Login Page", 
          textAlign: TextAlign.right, 
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
            // fontStyle: FontStyle.italic
          )
        ),
      ),
    );
  }
}
