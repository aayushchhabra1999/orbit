import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:orbit/CustomWidgets/FormButtons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Welcome back.",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey
                      ),
                    ),
                  ),
                  LoginForm(),
                ],
              ),
            )));
  }
}

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            TextFormField(
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: 'USERNAME',
              hintText: 'Example: jack_orb',
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'PASSWORD',
              hintText: 'PASSWORD',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: formButton(event: () {
              Alert(
                context: context,
                type: AlertType.info,
                title: "Logged In",
                desc: "Welcome",
                buttons: [
                  DialogButton(
                    child: Text(
                      "OK",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () => Navigator.pop(context),
                    width: 120,
                  )
                ],
              ).show();
            }, text: "Login")
        )
        ],
      ),
    ),)
    ,
    );
  }
}

