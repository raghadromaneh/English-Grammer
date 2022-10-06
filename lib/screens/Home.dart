import 'dart:ffi';

import 'package:englishapp/components/containerright.dart';
import 'package:englishapp/components/containetLeft.dart';
import 'package:englishapp/screens/Login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                "images/R.png",
                width: 30,
              ),
            ),
          ),
          actions: [
            Image.asset(
              "images/user.png",
              scale: 12,
            )
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Hello , ${CurrentUser!.toUpperCase()} ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  "images/hello.png",
                  scale: 20,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 22, 147, 141),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(110),
                  topLeft: Radius.circular(20),
                ),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Choose Topic",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ContainerRight(
                        ContainerColor: Colors.white,
                        imagepath: "images/decision.png",
                        tilte: "Tenses",
                        OnTapping: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ContainerLeft(
                        OnTapping: () {},
                        ContainerColor: Color.fromARGB(255, 207, 236, 236),
                        tilte: "Verbs",
                        imagepath: "images/eng.png",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ContainerLeft(
                        OnTapping: () {},
                        ContainerColor: Color.fromARGB(255, 207, 236, 236),
                        tilte: "    Parts\nOf Speech",
                        imagepath: "images/eng.png",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ContainerRight(
                        ContainerColor: Color.fromARGB(255, 255, 255, 255),
                        imagepath: "images/decision.png",
                        tilte: "Conditional\n Sentences",
                        OnTapping: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
