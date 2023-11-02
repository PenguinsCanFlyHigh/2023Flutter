import 'package:flutter/material.dart';

class CardTest extends StatefulWidget {
  const CardTest({super.key});

  @override
  State<CardTest> createState() => _CardTestState();
}

class _CardTestState extends State<CardTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 4.0,
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
