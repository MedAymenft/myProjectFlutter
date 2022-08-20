// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Stack(
          children: [
            SizedBox(
              //color: Colors.amber,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 2,),
                  Text("Welcome to my Application",style:TextStyle(fontSize: 17,fontFamily: "ok")),
                  SizedBox(height: 80,),
                  SvgPicture.asset("assets/icons/chat.svg",width: 240,),
                  SizedBox(height: 30,),
                  
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, '/log');},
                       
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 91, 16, 104)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 120, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(
                    onPressed: () {Navigator.pushNamed(context, '/sig');},
                       
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 220, 179, 228)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 120, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                    ),
                    child: Text(
                      "Signup",
                      style: TextStyle(fontSize: 19,color: Colors.grey[800]),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            Positioned(
              child: Image.asset(
                "assets/images/main_top.png",
                width: 100,
              ),
              left: 0,
            ),
            Positioned(
              child: Image.asset("assets/images/main_bottom.png", width: 90),
              bottom: 0,
            ),
          ],
        ));
  }
}
