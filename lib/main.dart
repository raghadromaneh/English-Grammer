import 'package:englishapp/screens/FutureTense.dart';
import 'package:englishapp/screens/Home.dart';
import 'package:englishapp/screens/Login.dart';
import 'package:englishapp/screens/adjective.dart';
import 'package:englishapp/screens/adverb.dart';
import 'package:englishapp/screens/noun.dart';
import 'package:englishapp/screens/pastTense.dart';
import 'package:englishapp/screens/presentTense.dart';
import 'package:englishapp/screens/verbs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
      routes: {
        "/home": (context) => Home(),
        "/verbs": (context) => Verbs(),
        "/adv": (context) => Adverb(),
        "/adj": (context) => Adjective(),
        "/noun": (context) => Noun(),
        "/present": (context) => Present(),
        "/past": (context) => Past(),
        "/future": (context) => FutureTense(),
      },
    ),
  );
}
