import 'package:englishapp/components/buttonMain.dart';
import 'package:englishapp/screensq/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ButtonMain(
            OnPressing: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return WelcomeScreen();
                },
              ));
            },
            Title: "Enter the Test",
          ),
        ),
      ),
    );
  }
}
