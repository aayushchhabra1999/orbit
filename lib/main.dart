import 'package:flutter/material.dart';
import 'package:orbit/Screens/welcome.dart'; // This is the welcome page
import 'package:orbit/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orbit',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          button: TextStyle(fontSize: 30.0)
        )
      ),
      home: WelcomeScreen()
    );
  }
}

