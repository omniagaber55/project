import 'package:app/constants.dart';
import 'package:app/screens/Type_screen.dart';
import 'package:flutter/material.dart';

class Welcome_screen extends StatelessWidget {
  const Welcome_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.asset("assets/images/Logo (1).png"),
            const Text(
              "Know more, with less.",
              style: TextStyle(color: one),
            ),
            const SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/Book.png"),
            const SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                width: 211,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: two),
                child: const Center(
                    child: Text(
                  "Upload PDF",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Type_screen(),
                  ),
                );
              },
              child: Container(
                height: 52,
                width: 211,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: two,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                    child: Text(
                  "Enter text",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}