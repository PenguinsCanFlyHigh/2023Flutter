import 'package:flutter/material.dart';

class CenterTest extends StatefulWidget {
  const CenterTest({super.key});

  @override
  State<CenterTest> createState() => _CenterTestState();
}

class _CenterTestState extends State<CenterTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center Test"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
        body:
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.red,
                width: 50,
                height: 50,
                margin: EdgeInsets.all(10),
          ),
            ),
    );
  }
}
