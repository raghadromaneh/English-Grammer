import 'package:englishapp/screens/Home.dart';
import 'package:englishapp/screens/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: Login(),
      routes: {
        "/home": (context) => Home(),
      },
    ),
  );
}
