import 'package:flutter/material.dart';
import 'package:recycling/recycle_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recycling App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecyclePage(),
    );
  }
}
