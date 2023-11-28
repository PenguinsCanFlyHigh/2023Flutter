import 'package:chap9/MyCustomForm.dart';
import 'package:chap9/BmiMain.dart';
import 'package:chap9/BmiResult.dart';
import 'package:flutter/material.dart';
import 'package:chap9/MyForm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyCustomForm(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('폼 검증 데모'),
      //     backgroundColor: Colors.purple,
      //   ),
      //   body: MyForm(),
      // ),
      //MyForm(),
      // home: BmiResult(height: 1.0, weight: 2.0),
      home: BmiMain(),
    );
  }
}
