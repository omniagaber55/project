import 'package:app/constants.dart';
import 'package:app/screens/Done_screen.dart';
import 'package:app/screens/Type_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/constants.dart';
import 'package:app/screens/Type_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delayed navigation to the next screen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RunMyApp()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Image.asset("assets/images/Logo (1).png"),
            Text(
              "Know more, with less.",
              style: TextStyle(color: one),
            ),
            SizedBox(height: 80),
            Image.asset("assets/images/Book.png"),
            SizedBox(height: 70),
            CupertinoActivityIndicator(
              radius: 30,
              color: three,
            ),
            SizedBox(height: 20),
            Text(
              "Please wait while we process your inputs...",
              style: TextStyle(color: three),
            ),
          ],
        ),
      ),
    );
  }
}