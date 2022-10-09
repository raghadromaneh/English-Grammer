import 'package:englishapp/screens/DrawerScreen.dart';
import "package:flutter/material.dart";

import '../components/URL_page.dart';

class Tenses extends StatefulWidget {
  const Tenses({super.key});
  @override
  State<Tenses> createState() => _TensesState();
}

class _TensesState extends State<Tenses> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tenses",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
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
      body: ListView(
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
              "images/tenses.png",
              scale: 3,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.all(20),
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                tabs: const [
                  Text(
                    "Summary",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Videos",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 510,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Tenses",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Simple Present Tense",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "There are three important exceptions:\n1. For positive sentences, we do not normally use the auxiliary\n2. For the 3rd person singular (he, she, it), we add s to the main verb or es to the auxiliary\n3. For the verb to be, we do not use an auxiliary, even for questions and negatives.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Present Continuous Tense ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "We use the present continuous tense to talk about: \n1- action happening now\n2- action in the future",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Present Perfect Tense",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "This tense is called the present perfect tense. There is always a connection with the past and with the present. There are basically three uses for the present perfect tense: \n1. experience\n2. changes \n3. Continuing situation",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Present Perfect Continuous Tense ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "This tense is called the present perfect continuous tense. There is usually a connection with the present or now. There are basically two uses for the present perfect continuous tense: \n1. An action that has just stopped or recently stopped\n2. An action continuing up to now ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Simple Past Tense ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "We use the simple past tense when:\n1.the event is in the past\n2. he event is completely finished",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
                ListView(
                  children: [
                    URLclass(
                        mylatfotmtitle: "Past simple tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: pastsUrl),
                    URLclass(
                        mylatfotmtitle: "Past continuous tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: pastcUrl),
                    URLclass(
                        mylatfotmtitle: "Past perfect tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: pastpUrl),
                    URLclass(
                        mylatfotmtitle: "present simple tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: presentsUrl),
                    URLclass(
                        mylatfotmtitle: "present continuous tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: presentcUrl),
                    URLclass(
                        mylatfotmtitle: "present perfect tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: presentpUrl),
                    URLclass(
                        mylatfotmtitle: "Future simple tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: futursUrl),
                    URLclass(
                        mylatfotmtitle: "Future continuous tense",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: futurcUrl),
                    URLclass(
                        mylatfotmtitle: "Future perfect ",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: futurpUrl),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
