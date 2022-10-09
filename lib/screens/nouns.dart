import 'package:englishapp/components/URL_page.dart';
import 'package:englishapp/screens/DrawerScreen.dart';
import "package:flutter/material.dart";

class Nouns extends StatefulWidget {
  const Nouns({super.key});
  @override
  State<Nouns> createState() => _NounsState();
}

class _NounsState extends State<Nouns> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nouns",
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
              "images/noun.png",
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
                        "What is a nouns?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Nouns refer to a person, place, thing, or idea. They make up the subjects, direct objects, and indirect objects in a sentence, along with other roles. ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "What are examples of nouns?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Nouns can be living things (Keanu Reeves or cat), places (beach or Detroit), things (ruler or PlayStation 5), or ideas (nihilism or the theory of evolution). ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "What are the different types of nouns?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Common nouns refer to general things (like parks), and proper nouns refer to a specific thing (like Yellowstone National Park). Nouns can also be plural or singular, depending on how many there are, and countable or uncountable, depending on how their plural form is used. ",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 15),
                      child: Text(
                        "How do you identify a noun in a sentence?",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Nouns usually have articles (the, a, or an) before them in a sentence, but not always. Sometimes you’ll see adjectives or words like “some” or “this” before nouns. Aside from the first word in a sentence, if a word is capitalized then it’s a noun, such as a person’s name. ",
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
                        mylatfotmtitle: "Nouns",
                        mylatformicon: Icons.video_collection,
                        myfunction: nounUrl)
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
