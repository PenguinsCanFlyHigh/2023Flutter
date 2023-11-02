import 'package:flutter/material.dart';

class CheckBoxTest extends StatefulWidget {
  const CheckBoxTest({super.key});

  @override
  State<CheckBoxTest> createState() => _CheckBoxTestState();
}

class _CheckBoxTestState extends State<CheckBoxTest> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value){
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SizedBox(height: 55,),
            Switch(
                value: isChecked!,
                onChanged: (value){
                setState(() {
                  isChecked = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
