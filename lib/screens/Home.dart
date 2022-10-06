import 'package:englishapp/components/containerright.dart';
import 'package:englishapp/components/containetLeft.dart';
import 'package:englishapp/screens/Login.dart';
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
        drawer: const Drawer(),
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
                  "images/hello.png",
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
              padding: const EdgeInsets.all(8),
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
                                  imagepath: "images/adv.png",
                                  tilte: "Adverb and it's kinds",
                                  OnTapping: () {
                                    Navigator.pushNamed(context, "/adv");
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerLeft(
                                  OnTapping: () {
                                    Navigator.pushNamed(context, "/verbs");
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
                                    Navigator.pushNamed(context, "/adj");
                                  },
                                  tilte: "Adjective",
                                  imagepath: "images/adj.png",
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerRight(
                                  imagepath: "images/noun.png",
                                  tilte: "Noun",
                                  OnTapping: () {
                                    Navigator.pushNamed(context, "/noun");
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
                                  imagepath: "images/present.png",
                                  tilte: "Present Tense",
                                  OnTapping: () {
                                    Navigator.pushNamed(context, "/present");
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerLeft(
                                  OnTapping: () {
                                    Navigator.pushNamed(context, "/past");
                                  },
                                  tilte: "Past Tense",
                                  imagepath: "images/past.png",
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
                                    Navigator.pushNamed(context, "/futute");
                                  },
                                  tilte: "Future Tense",
                                  imagepath: "images/future.png",
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                ContainerRight(
                                  imagepath: "images/test.png",
                                  tilte: "Test Yourself",
                                  OnTapping: () {},
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
