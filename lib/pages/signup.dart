// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                //color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(child: Text("Signup",style:TextStyle(fontSize: 25,fontFamily: "ok")),margin:EdgeInsets.only(top: 10),),
                    SizedBox(height: 20),
                    Container(child: SvgPicture.asset("assets/icons/signup.svg",width: 200,),margin: EdgeInsets.only(top:0),),
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
                          Container(child: Text("Already have an account?"),margin: EdgeInsets.only(right:7)),
                          GestureDetector(child: Text("login",style: TextStyle(fontWeight: FontWeight.bold),),
                                          onTap: (){  Navigator.pushNamed(context, '/log');},)
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,),
                    SizedBox(height: 10,),
                    Row(children: [
                      SizedBox(
                        child: Expanded(
                          child: Divider(thickness: 0.7,color:Color.fromARGB(255, 91, 16, 104) ,
                        
                          ),
                        ),
                        width: 130,
                      ),
                      Text("OR"),
                      SizedBox(child: Expanded(child: Divider(thickness:0.7,color:Color.fromARGB(255, 91, 16, 104))),
                        width: 130,),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,

                    ),
                    SizedBox(height: 10,),
                    Row(children: [
                      GestureDetector(
                        onTap: (){    },
                        child: Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            border: Border.all(color: Color.fromARGB(255, 91, 16, 104)),
                          ),
                          child:SvgPicture.asset("assets/icons/facebook.svg",height: 20,color:Color.fromARGB(255, 91, 16, 104))
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){   },
                        child: Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            border: Border.all(color: Color.fromARGB(255, 91, 16, 104)),
                          ),
                          child:SvgPicture.asset("assets/icons/twitter.svg",height:20,color:Color.fromARGB(255, 91, 16, 104))
                        ),
                      ),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap:(){  },
                        child: Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            border: Border.all(color: Color.fromARGB(255, 91, 16, 104)),
                          ),
                          child:SvgPicture.asset("assets/icons/google-plus.svg",height: 20,color: Color.fromARGB(255, 91, 16, 104))
                        ),
                      ),

                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/signup_top.png",
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