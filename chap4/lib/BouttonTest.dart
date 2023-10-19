import 'package:flutter/material.dart';

class BouttonTest extends StatefulWidget {
  const BouttonTest({super.key});

  @override
  State<BouttonTest> createState() => _BouttonTestState();
}

class _BouttonTestState extends State<BouttonTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boutton Test"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.add),
          iconSize: 200,
          onPressed: (){
            setState(() {

            });
          },
        ),
      ),
    );
  }
}
