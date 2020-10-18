import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Container c = Container(
    //   height: size.height,
    //   width: double.infinity,
    //   child: Stac,
    // )

    SafeArea s = SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              "assets/icons/logo.jpg"
          ),
          FlatButton(
              onPressed: (){
                return AlertDialog()
              }, child: Text("s")),
          FlatButton(
              onPressed: null, child: Text("Sign Up"))
        ],
      ),
    );

    return Scaffold(
      body: s
    );
  }
}
