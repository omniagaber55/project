import 'package:app/constants.dart';
import 'package:app/screens/Processing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Type_screen extends StatelessWidget {
  const Type_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 214,
                  width: 271,
                  decoration: const BoxDecoration(
                      color: four,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintMaxLines: 5),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProcessingScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 52,
                  width: 117,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: two,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                      child: Text(
                    "Go",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
