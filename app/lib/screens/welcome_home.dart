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
            SizedBox(
              height: 70,
            ),
            Image.asset("assets/images/Logo (1).png"),
            Text("Know more, with less.",style: TextStyle(color: one),),
            SizedBox(
              height: 100,
            ),
             Image.asset("assets/images/Book.png"),
             SizedBox(
              height: 70,
             ),
            InkWell(
              onTap: (){},
               child: Container(
                height: 52,
                width: 211,
                   padding: EdgeInsets.symmetric(vertical: 5),
                         
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: two
                ),
                child: Center(child: Text("Upload PDF",style: TextStyle(color: Colors.white,fontSize: 28),)),
               ),
             ),
             SizedBox(
              height: 20,
             ),
             InkWell(
              onTap: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Type_screen(),
                      ),
                    );
              },
               child: Container(
                height: 52,
                width: 211,
                padding: EdgeInsets.symmetric(vertical: 5),
                           
                decoration: BoxDecoration(
                  color: two,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text("Enter text",style: TextStyle(color: Colors.white,fontSize: 28),)),
               ),
             ),
          ],
        ),
      ),
    );
  }
}