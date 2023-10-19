import 'package:flutter/material.dart';

class TabBarTest extends StatefulWidget {
  const TabBarTest({super.key});

  @override
  State<TabBarTest> createState() => _TabBarTestState();
}

class _TabBarTestState extends State<TabBarTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab"),
            backgroundColor: Colors.cyan,
            bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.tag_faces),
                  ),
                  Tab(
                    text: "메뉴2",
                  ),
                  Tab(
                    icon: Icon(Icons.info),
                    text: "메뉴3",
                  ),
                ],
            ),
          ),
          body: PageView(
            children: <Widget>[
              Container(
                color: Colors.red,
                margin: EdgeInsets.all(11),
              ),
              Container(
                color: Colors.green,
                margin: EdgeInsets.all(5),
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all(15),
              ),
            ],
          ),
        ),
    );
  }
}
