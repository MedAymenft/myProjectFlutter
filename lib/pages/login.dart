// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
          body: Stack(
          children: [
            Container(
              //color: Colors.amber,
              width: double.infinity,
              height: double.infinity,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(child: Text("Login",style:TextStyle(fontSize: 22,fontFamily: "ok")),margin:EdgeInsets.only(top: 30),),
                  SizedBox(height: 50),
                  Container(child: SvgPicture.asset("assets/icons/login.svg",width: 230,),margin: EdgeInsets.only(top:0),),
                  SizedBox(height: 20,),
                  Container(
                    child: const TextField(
                      textInputAction: TextInputAction.done,
                      
                      decoration: InputDecoration(
                        hintText: " aymen@gmail.com",hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        //labelText: "Email",
                        labelStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.person,
                            color: Color.fromARGB(255, 91, 16, 104)),
                        
                        border: InputBorder.none,

                        //border: OutlineInputBorder()
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(60, 0, 60, 20),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.purple[100],
                    ),
                  ),
                  SizedBox(height: 0),
                   Container(
                    child: const TextField(
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: " Password",hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        //labelText: "Email",
                        labelStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.lock_outline,
                            color: Color.fromARGB(255, 91, 16, 104)),
                        suffixIcon: Icon(Icons.visibility),
                        border: InputBorder.none,

                        //border: OutlineInputBorder()
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(60, 0, 60, 20),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.purple[100],
                    ),
                  ),
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
                  Row(children: [
                        Container(child: Text("Don't have an account?"),margin: EdgeInsets.only(right:7)),
                        GestureDetector(child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold),),
                                        onTap: (){ Navigator.pushNamed(context, '/sig');},
                        )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,)
                ],
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 100,
              ),
            ),
            Positioned(
              bottom: 0,
              right:0,
              child: Image.asset("assets/images/login_bottom.png", width: 90),
            ),
          ],
        )
    
      ),
    );
  }
}