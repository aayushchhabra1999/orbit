import 'package:flutter/material.dart';
import 'package:orbit/constants.dart';

Widget formButton({text, event}) {
  return Padding(
    padding: const EdgeInsets.only(top:12.0),
    child: FlatButton(
      color: Colors.grey[350],
      hoverColor: Colors.black,
      highlightColor: Colors.grey,
      splashColor: Colors.grey,
      textColor: Colors.blueGrey[600],
      autofocus: true,
      padding: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side:BorderSide(color: Colors.black)
      ),
      onPressed: event,
      child: Text(text, style: formButtonStyle),
    ),
  );
}
