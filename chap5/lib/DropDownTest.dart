import 'package:flutter/material.dart';

class DropDownTest extends StatefulWidget {
  const DropDownTest({super.key});

  @override
  State<DropDownTest> createState() => _DropDownTestState();
}

class _DropDownTestState extends State<DropDownTest> {
  final valueList = ['First item', 'Second item', 'Third item'];//드랍다운 리스트
  String selectedItem = 'First item';//처음 보일 항목
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown",
        style: TextStyle(
          color: Colors.white,
         ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: DropdownButton(
        value: selectedItem, //현재 선택된, 최초로 보이게 될 항목
        items: valueList.map(
                (value) {
                  return DropdownMenuItem(
                    value: value,
                      child: Text(value),
                  );
                }
        ).toList(), //맵을 리스트로 변환, valueList는 드랍다운 리스트
        onChanged: (String? value){
          setState(() {
            selectedItem = value!;
          });
        },
      ),
    );
  }
}
