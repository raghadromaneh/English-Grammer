import 'package:englishapp/screens/DrawerScreen.dart';
import 'package:englishapp/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:englishapp/components/constants.dart';
import 'package:englishapp/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 22, 147, 141),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(90),
                          bottomLeft: Radius.circular(0)),
                    ),
                    width: double.infinity,
                    height: 180,
                    child: Text("")),
                const SizedBox(
                  height: 50,
                ),
                Text("Score", style: Theme.of(context).textTheme.headline3),
                SizedBox(
                  height: 40,
                ),
                Text(
                    "${_qnController.correctAns}/${_qnController.questions.length}",
                    style: Theme.of(context).textTheme.headline4),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => Get.to(Home()),
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Go to home",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
