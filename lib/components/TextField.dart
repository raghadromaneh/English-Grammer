// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({this.HintText, this.Security, required this.myController});
  String? HintText;
  bool? Security;
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 300),
      child: TextField(
        controller: myController,
        obscureText: Security!,
        style: TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
            hintText: "$HintText",
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              borderRadius: BorderRadius.circular(25),
            )),
      ),
    );
  }
}
