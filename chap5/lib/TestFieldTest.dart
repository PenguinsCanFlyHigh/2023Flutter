import 'package:flutter/material.dart';
//"Text"FieldTest ㅋㅋㅋ
class TestFieldTest extends StatefulWidget {
  const TestFieldTest({super.key});

  @override
  State<TestFieldTest> createState() => _TestFieldTestState();
}

class _TestFieldTestState extends State<TestFieldTest> {
  String inputText = '입력한 결과';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestField'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text('$inputText',
          style: TextStyle(
            fontSize: 40
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
              labelText: '이름을 입력하세요',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            onChanged: (text){
              setState(() {
                inputText = text;
              });
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '나이를 입력하세요',
            ),
          ),
        ],
      ),
    );
  }
}
