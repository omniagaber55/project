import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 

 
class RunMyApp extends StatelessWidget {
  RunMyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: Scaffold(
       
        body: HomePage(),
      ),
    );
  }
}
 
class HomePage extends StatelessWidget {
  HomePage({super.key});
  // controller to retrieve the text
  TextEditingController controller = TextEditingController(); 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70),
              Image.asset("assets/images/Logo (1).png"),
              Text(
                "Know more, with less.",
                style: TextStyle(color: one),
              ),
              SizedBox(height: 30),
               Center(child: Text("Done!",style: TextStyle(color: three,fontSize: 24),)),
              Center(child: Text("Here’s your output text",style: TextStyle(color: three,fontSize: 24),)),
            SizedBox(
              height: 30,
            ),
          Center(
            child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 360,
                    width: 360,
                    decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child:  TextField( 
                controller: controller,
                
            decoration: InputDecoration(border: InputBorder.none,hintMaxLines: 10,hintText:  "عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي عربي",hintStyle: TextStyle(color: three,fontSize: 24)),
              ),
                  ),
                ),
          ),
            SizedBox(
              height: 40,
            ),
             InkWell(onTap: (){
                Clipboard.setData(new ClipboardData(text: controller.text))
                    .then((_) {
                  controller.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Copied to your clipboard !')));
                });
             },
                 child: Container(
                  height: 52,
                  width: 293,
                     padding: EdgeInsets.symmetric(vertical: 5),
                           
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    color: two
                  ),
                  child: Center(child: Text("Copy to clipboard",style: TextStyle(color: Colors.white,fontSize: 28),)),
                 ),
               ),
               SizedBox(
                height: 20,
               ),
               InkWell(
                onTap: () {
                  
                },
                 child: Container(
                  height: 52,
                  width: 293,
                  padding: EdgeInsets.symmetric(vertical: 5),
                             
                  decoration: BoxDecoration(
                    color: two,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text("Download as pdf",style: TextStyle(color: Colors.white,fontSize: 28),)),
                 ),
               ),
          ],
        ),
      ),
    );
  }
}