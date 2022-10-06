import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  ButtonMain({this.Title, required this.OnPressing});
  String? Title;
  Function() OnPressing;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: OnPressing,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Color.fromARGB(255, 2, 69, 70),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Text(
          "$Title",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
