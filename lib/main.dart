import 'package:englishapp/screens/Home.dart';
import 'package:englishapp/screens/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
      routes: {"/home": (context) => Home()},
    ),
  );
}
