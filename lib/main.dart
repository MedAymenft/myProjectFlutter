import 'package:flutter/material.dart';
import 'package:project1/pages/login.dart';
import 'package:project1/pages/signup.dart';
import 'package:project1/pages/welcome.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
            debugShowCheckedModeBanner: (false),
            initialRoute: '/',
            routes: {
                        '/': (context) => const Welcome(),
                        '/log': (context) => const Login(),
                        '/sig': (context) => const Signup(),

  },
    );
  }
}

