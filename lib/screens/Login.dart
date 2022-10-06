import 'package:englishapp/components/TextField.dart';
import 'package:englishapp/components/buttonMain.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

List Username = ["rahaf", "ahmad"];
List Password = ["rahaf123", "ahmad123"];
final usernameController = TextEditingController();
final passwordController = TextEditingController();
String? CurrentUser;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 22, 147, 141),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          spreadRadius: 30,
                          color: Color.fromARGB(239, 8, 65, 60),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 70,
                          color: Color.fromARGB(103, 150, 235, 225),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "images/img_2268.png",
                      width: 250,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Learn english,",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Anytime anywhere",
                    style: TextStyle(
                      fontSize: 23,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InputField(
                    HintText: "Username",
                    Security: false,
                    myController: usernameController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                    HintText: "Password",
                    Security: true,
                    myController: passwordController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonMain(
                      OnPressing: () {
                        if (usernameController.text != "" &&
                            passwordController != "") {
                          for (int i = 0; i < Username.length; i++) {
                            if (usernameController.text == Username[i] &&
                                passwordController.text == Password[i]) {
                              CurrentUser = Username[i];
                              Navigator.pushNamed(context, "/home");
                              break;
                            } else if (usernameController.text != Username[i] ||
                                passwordController.text != Password[i]) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    actions: [Text("incorrect ")],
                                  );
                                },
                              );
                            }
                          }
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                actions: [Text("null")],
                              );
                            },
                          );
                        }
                      },
                      Title: "Log in"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
