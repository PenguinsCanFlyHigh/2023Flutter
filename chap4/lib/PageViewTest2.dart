import 'package:flutter/material.dart';

class PageViewTest2 extends StatefulWidget {
  const PageViewTest2({super.key});

  @override
  State<PageViewTest2> createState() => _PageViewTest2State();
}

class _PageViewTest2State extends State<PageViewTest2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.blue,
          ),
          GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.purple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
