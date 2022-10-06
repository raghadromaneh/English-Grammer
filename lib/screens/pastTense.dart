import "package:flutter/material.dart";

class Past extends StatefulWidget {
  const Past({super.key});
  @override
  State<Past> createState() => _PastState();
}

class _PastState extends State<Past> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Past Tense",
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
      drawer: Drawer(),
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
              "images/past.png",
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
                  children: [],
                ),
                ListView(
                  children: [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
