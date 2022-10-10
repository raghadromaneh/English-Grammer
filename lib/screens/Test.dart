import 'package:englishapp/screens/DrawerScreen.dart';
import 'package:englishapp/screensq/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:englishapp/components/constants.dart';

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
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 22, 147, 141),
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
        drawer: DrawerScreen(),
        body: Center(
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 22, 147, 141),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(90),
                        bottomLeft: Radius.circular(0)),
                  ),
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    "images/test.png",
                    scale: 4,
                  )),
              const SizedBox(
                height: 100,
              ),
              Text(
                "Let's Start The Quiz,",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () => Get.to(QuizScreen()),
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
