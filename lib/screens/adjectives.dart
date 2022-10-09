import 'package:englishapp/components/URL_page.dart';
import 'package:englishapp/screens/DrawerScreen.dart';
import "package:flutter/material.dart";

class Adjectives extends StatefulWidget {
  const Adjectives({super.key});
  @override
  State<Adjectives> createState() => _AdjectivesState();
}

class _AdjectivesState extends State<Adjectives> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Adjectives",
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
              "images/adj.png",
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
                        "What is a adjectives?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "are words that describe the qualities or states of being of nouns: enormous, doglike, silly, yellow, fun, fast. They can also describe the quantity of nouns: many, few, millions, eleven.",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "What are examples of adjectives?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Descriptive words like “beautiful,” “smooth,” or “heavy” are all adjectives, as are numbers ( “twelve eggs”). ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "Uses of adjectives",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Adjectives tell the reader how much—or how many—of something you’re talking about, which thing you want passed to you, or which kind of something you want.\nPlease use three white flowers in the arrangement.\nThree and white are modifying flowers.\nOften, when adjectives are used together, you should separate them with a comma or conjunction. See “Coordinate Adjectives” below for more detail.\nI’m looking for a small, good-tempered dog to keep as a pet.\nMy new dog is small and good-tempered.",
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
                        mylatfotmtitle: "Adjectives",
                        mylatformicon: Icons.video_collection,
                        myfunction: adjectiveUrl)
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
