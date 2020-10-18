import 'package:flutter/material.dart';
import 'package:orbit/CustomWidgets/FormButtons.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SafeArea s = SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/logo.jpg"),
          formButton(
              event: () {
                Navigator.pushNamed(context, '/login');
              },
              text: "Login"),
          formButton(
              text: "Sign up",
              event: () {
                Navigator.pushNamed(context, '/signup');
              })
        ],
      ),
    );

    return Scaffold(body: s);
  }
}
