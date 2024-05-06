import 'package:app/constants.dart';
import 'package:app/screens/Done_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delayed navigation to the next screen
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Done_screen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            Image.asset("assets/images/Logo (1).png"),
            const Text(
              "Know more, with less.",
              style: TextStyle(color: one),
            ),
            const SizedBox(height: 80),
            Image.asset("assets/images/Book.png"),
            const SizedBox(height: 70),
            const CupertinoActivityIndicator(
              radius: 30,
              color: three,
            ),
            const SizedBox(height: 20),
            const Text(
              "Please wait while we process your inputs...",
              style: TextStyle(color: three),
            ),
          ],
        ),
      ),
    );
  }
}
