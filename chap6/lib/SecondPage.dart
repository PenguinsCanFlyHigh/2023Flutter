import 'package:flutter/material.dart';

import 'FirstPage.dart';
import 'Person.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.person});
  final Person person;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(widget.person.name),
          ElevatedButton(
            child: Text("이전 페이지로 이동"),
            onPressed: (){
              final person = Person("김길동", 50);
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context){return FirstPage();}),//당연히 람다식 말고 이렇게도 가능
              // ); but SecondPage에서는 이걸 쓰지는 않을 것.

              Navigator.pop(context, person); //이건 push 와 다르게 화면을 종료하고 이전 화면으로 돌아가게 됨.
            },
          ),
        ],
      ),
    );
  }
}
