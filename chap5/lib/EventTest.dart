import 'package:flutter/material.dart';

class EventTest extends StatefulWidget {
  const EventTest({super.key});

  @override
  State<EventTest> createState() => _EventTestState();
}

class _EventTestState extends State<EventTest> {
  String? eventMessage = "초기값"; //String 은 null이 안되지만 nullable로 초기화 하겠다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Test",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //가운데로 정렬
          children: [
            Text("$eventMessage"),
            SizedBox(
              height: 40,//사이에 공간 두고 싶을 때 사용하는게 Sizedbox
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  eventMessage = "Gesture Detected click";
                });
              },
              child: Text("Click me"),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  eventMessage = "InkWell Click";
                });
              },
              child: Text("InkWell Click"),
            ),
          ],
        ),
      ),
    );
  }
}
