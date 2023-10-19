import 'package:chap4/BouttonTest.dart';
import 'package:chap4/ExpendedTest.dart';
import 'package:chap4/TabBarTest.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationTest.dart';
import 'CenterTest.dart';
import 'ContainerTest.dart';
import 'PageViewUI.dart';
import 'SizeBoxTest.dart';
import 'StackTest.dart';
import 'PuzzleUI.dart';

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
      //home: const ContainerTest(),
      //home: const PageViewUI(),
    //  home: TabBarTest(),
    //  home: BottomNavigationTest(),
    //     home: CenterTest(),
    //     home: ExpendedTest(),
    // home: SizeBoxTest(),
    home: BouttonTest(),
    );
  }
}

