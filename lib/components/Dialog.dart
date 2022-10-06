import 'package:flutter/material.dart';

class DialogMain extends StatelessWidget {
  DialogMain({this.message});
  String? message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      actions: [
        Container(
          height: 100,
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Text(
            "$message",
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
    ;
  }
}
