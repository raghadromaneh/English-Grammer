import 'package:englishapp/components/URL_page.dart';
import 'package:englishapp/screens/DrawerScreen.dart';
import "package:flutter/material.dart";

class Adverbs extends StatefulWidget {
  const Adverbs({super.key});
  @override
  State<Adverbs> createState() => _AdverbsState();
}

class _AdverbsState extends State<Adverbs> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Adverbs",
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
              "images/adv.png",
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
                        "What is a adverbs?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "An adverb is a word that modifies (describes) a verb (he sings loudly), an adjective (very tall), another adverb (ended too quickly), or even a whole sentence (Fortunately, I had brought an umbrella). Adverbs often end in -ly, but some (such as fast) look exactly the same as their adjective counterparts.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Examples",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Tom Longboat did not run badly.\nTom is very tall.\nThe race finished too quickly.\nFortunately, Lucy recorded Tom’s win.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Adverbs and adjectives",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Adverbs can also modify adjectives and other adverbs. Often, the purpose of the adverb is to add a degree of intensity to the adjective.\nThe adverb almost is modifying the adverb always, and they’re both modifying right.",
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
                        mylatfotmtitle: "Adverbs",
                        mylatformicon: Icons.video_collection_rounded,
                        myfunction: adverbsUrl),
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
