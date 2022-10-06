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
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  Text(
                    "Hello , ${CurrentUser!.toUpperCase()} ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
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
              Text(
                "Welcome back",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 225, 222, 222),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    topLeft: Radius.circular(20),
                  ),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Choose Topic",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        ContainerRight(
                          ContainerColor: Colors.red,
                          imagepath: "images/decision.png",
                          tilte: "Tenses",
                          OnTapping: () {},
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ContainerLeft(
                          OnTapping: () {},
                          ContainerColor: Colors.green,
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
                          ContainerColor: Colors.green,
                          tilte: "Verbs",
                          imagepath: "images/eng.png",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ContainerRight(
                          ContainerColor: Colors.red,
                          imagepath: "images/decision.png",
                          tilte: "Tenses",
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
      ),
    );
  }
}
