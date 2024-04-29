import 'package:flutter/material.dart';

import 'AlertDlg.dart';
import 'CheckBoxTest.dart';
import 'DatePicker.dart';
import 'DropDownTest.dart';
import 'EventTest.dart';
import 'FinalExam.dart';
import 'HeroTest.dart';
import 'RadioListTest.dart';
import 'TestFieldTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


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
      // home: RadioListTest(),
      // home: DropDownTest(),
      // home: AlertDlg(),
      // home: DatePickerTest(),
      // home: EventTest(),
      // home: HeroTest(),
      home: FinalExam(),
    );

    return s;
  }
}
