import 'package:flutter/material.dart';

class ContainerRight extends StatelessWidget {
  ContainerRight({this.tilte, this.imagepath, required this.OnTapping});
  String? imagepath;
  String? tilte;
  Function() OnTapping;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTapping,
      child: Container(
        width: 170,
        height: 220,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 10, 148, 151),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "$imagepath",
              scale: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$tilte",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
