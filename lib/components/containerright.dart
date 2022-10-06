import 'package:flutter/material.dart';

class ContainerRight extends StatelessWidget {
  ContainerRight(
      {this.tilte,
      this.imagepath,
      this.ContainerColor,
      required this.OnTapping});
  Color? ContainerColor;
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
            color: ContainerColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50))),
        child: Column(
          children: [
            Image.asset(
              "$imagepath",
              width: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$tilte",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
