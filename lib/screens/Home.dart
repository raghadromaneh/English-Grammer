import 'package:englishapp/components/containerright.dart';
import 'package:englishapp/components/containetLeft.dart';
import 'package:englishapp/screens/DrawerScreen.dart';
import 'package:englishapp/screens/Login.dart';
import 'package:englishapp/screens/Test.dart';
import 'package:englishapp/screens/adjectives.dart';
import 'package:englishapp/screens/adverbs.dart';
import 'package:englishapp/screens/condition_page.dart';
import 'package:englishapp/screens/nouns.dart';
import 'package:englishapp/screens/tenses.dart';
import 'package:englishapp/screens/verbs.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 136, 145),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
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
        body: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Hello , ${CurrentUser!.toUpperCase()} ",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Image.asset(
                  "images/Hi.png",
                  scale: 20,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: const [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 194, 229, 231),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Choose Topic",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  TabBar(
                    controller: _tabController,
                    tabs: const [
                      Text("   "),
                      Text("   "),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    width: double.infinity,
                    height: 510,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                ContainerRight(
                                  imagepath: "images/noun.png",
                                  tilte: "Nouns",
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Nouns();
                                      },
                                    ));
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerLeft(
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Verbs();
                                      },
                                    ));
                                  },
                                  tilte: "Verbs",
                                  imagepath: "images/verb.png",
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                ContainerLeft(
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Adjectives();
                                      },
                                    ));
                                  },
                                  tilte: "Adjectives",
                                  imagepath: "images/adj.png",
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerRight(
                                  imagepath: "images/adv.png",
                                  tilte: "Adverbs",
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Adverbs();
                                      },
                                    ));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                ContainerRight(
                                  imagepath: "images/tenses.png",
                                  tilte: "Tenses",
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Tenses();
                                      },
                                    ));
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerLeft(
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return ConditionalStatement();
                                      },
                                    ));
                                  },
                                  tilte: "Conditional Sentences",
                                  imagepath: "images/if.png",
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                ContainerLeft(
                                  OnTapping: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return Test();
                                      },
                                    ));
                                  },
                                  tilte: "Test",
                                  imagepath: "images/test.png",
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
