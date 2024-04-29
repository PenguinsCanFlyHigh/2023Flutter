import 'package:flutter/material.dart';

class FinalExam extends StatefulWidget {
  const FinalExam({super.key});

  @override
  State<FinalExam> createState() => _FinalExamState();
}

class _FinalExamState extends State<FinalExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("기말고사"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "기말고사"
            ),
          ),
        ],
      ),
    );
  }
}
