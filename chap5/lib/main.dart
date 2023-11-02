import 'package:flutter/material.dart';

import 'CheckBoxTest.dart';
import 'RadioListTest.dart';
import 'TestFieldTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData t = new ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    );

    MaterialApp s = new MaterialApp(
      title: 'Flutter Demo',
      theme: t,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: TestFieldTest(),
      // home: CheckBoxTest(),
      home: RadioListTest(),
    );

    return s;
  }
}
