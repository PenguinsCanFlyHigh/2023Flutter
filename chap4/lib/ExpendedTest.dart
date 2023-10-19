import 'package:flutter/material.dart';

class ExpendedTest extends StatefulWidget {
  const ExpendedTest({super.key});

  @override
  State<ExpendedTest> createState() => _ExpendedTestState();
}

class _ExpendedTestState extends State<ExpendedTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expended Test"),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              width: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              width: 125,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 150,
              height: 500,
            ),
          ),

        ],
      ),
    );
  }
}
