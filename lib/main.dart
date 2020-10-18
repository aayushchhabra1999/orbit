import 'package:flutter/material.dart';
import 'package:orbit/Screens/welcome.dart'; // This is the welcome page
import 'package:orbit/Screens/Signup.dart';
import 'package:orbit/constants.dart';
import 'package:orbit/Screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orbit',
      initialRoute: '/',
      routes:{
        '/': (context) => WelcomeScreen(),
        '/signup': (context) => Signup(),
        '/login': (context) => Login(),

      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          button: TextStyle(
              fontSize: 25,
              color: Colors.grey
          ),
          bodyText1: TextStyle(fontSize: 30.0),
          bodyText2: TextStyle(fontSize: 30.0),
        )
      ),
    );
  }
}

