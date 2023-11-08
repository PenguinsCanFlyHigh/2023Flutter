import 'package:flutter/material.dart';

class ContainerTest2 extends StatefulWidget {
  const ContainerTest2({super.key});

  @override
  State<ContainerTest2> createState() => _ContainerTest2State();
}

class _ContainerTest2State extends State<ContainerTest2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        backgroundColor: Colors.cyan,
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: EdgeInsets.all(1.0),//색 안쪽 여백
            margin: EdgeInsets.all(1.0),//색 바깥쪽 여백
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: EdgeInsets.all(1.0),//색 안쪽 여백
            margin: EdgeInsets.all(1.0),//색 바깥쪽 여백
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: EdgeInsets.all(1.0),//색 안쪽 여백
            margin: EdgeInsets.all(1.0),//색 바깥쪽 여백
          ),
          Column(
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                padding: EdgeInsets.all(1.0),//색 안쪽 여백
                margin: EdgeInsets.all(5.0),//색 바깥쪽 여백
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                padding: EdgeInsets.all(1.0),//색 안쪽 여백
                margin: EdgeInsets.all(1.0),//색 바깥쪽 여백
              ),
              Container(
                color: Colors.purple,
                width: 100,
                height: 100,
                padding: EdgeInsets.all(1.0),//색 안쪽 여백
                margin: EdgeInsets.all(1.0),//색 바깥쪽 여백
              ),
            ],
          ),
        ],
      ),
    );
  }
}
