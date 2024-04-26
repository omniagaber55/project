import 'package:app/constants.dart';
import 'package:app/screens/Processing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Type_screen extends StatelessWidget {
  const Type_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Image.asset("assets/images/Logo (1).png"),
            Text(
              "Know more, with less.",
              style: TextStyle(color: one),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: Container(
                height: 214,
                width: 271,
                decoration: BoxDecoration(
                    color: four,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProcessingScreen(),
                      ),
                    );
              },
              child: Container(
                height: 52,
                width: 117,
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: two,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                    child: Text(
                  "Go",
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
