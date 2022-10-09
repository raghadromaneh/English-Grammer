import 'dart:io';

import 'package:englishapp/screens/Login.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool _SwitchVal = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 15, 136, 145),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(250),
              ),
            ),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/user.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 110)),
              Icon(
                Icons.circle_rounded,
                size: 12,
                color: Color.fromARGB(255, 78, 241, 84),
              ),
              Text(
                "  ${CurrentUser!}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: ListView(children: [
              SizedBox(
                height: 15,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) {
                      return Login();
                    })));
                  });
                },
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Log out",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                  onTap: () {
                    exit(0);
                  },
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Exit app",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
              SizedBox(
                height: 70,
              ),
              Center(
                  child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 69, 70),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ))
            ]),
          )
        ],
      ),
    );
  }
}
