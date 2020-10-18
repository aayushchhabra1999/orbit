import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:orbit/CustomWidgets/FormButtons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Signup extends StatelessWidget {
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
                  Text("Sign Up"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "We are excited to have you.",
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                    ),
                  ),
                  SignUpForm(),
                ],
              ),
            )));
  }
}

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
                  labelText: 'NAME',
                  hintText: 'Example: Jack',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'AGE',
                  hintText: 'Example: 13',
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'GRADE',
                  hintText: 'Choose between 1 and 12',
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: 'Reminder',
                  hintText: 'Format hh:mm (24 hour clock)',
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              formButton(
                  text: "Sign Up",
                  event: () {
                    Alert(
                      context: context,
                      type: AlertType.info,
                      title: "Signed Up",
                      desc: "ORBIT IS AWESOME",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "I Agree",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pop(context),
                          width: 120,
                        )
                      ],
                    ).show();
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}