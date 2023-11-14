import 'package:flutter/material.dart';

import 'Person.dart';
import 'SecondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key}); //교재에선 stateless 위젯 사용했음.

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ElevatedButton(
        child: Text("다음 페이지로 이동"),
        onPressed: (){
          final person = new Person("김유신", 40);

          Navigator.push(//Navigator.push는 누르면 화면 건너가는 것
              context, //context는 그냥 그대로 두면 됨. 공유해야할 정보들을 가져가줌?
              MaterialPageRoute(builder:(context) => SecondPage(person: person)), //한줄짜리라 람다식 활용했음
          );
        },
      ),
    );
  }
}
