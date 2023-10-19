import 'package:flutter/material.dart';

class SizeBoxTest extends StatefulWidget {
  const SizeBoxTest({super.key});

  @override
  State<SizeBoxTest> createState() => _SizeBoxTestState();
}

class _SizeBoxTestState extends State<SizeBoxTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Test"),
        backgroundColor: Colors.blue,
      ),
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.8),
        ),
        elevation: 10,
        child: Container(
          color: Colors.red,

        ),
      ),
    );
  }
}
