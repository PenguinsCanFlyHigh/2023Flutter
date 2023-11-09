import 'package:flutter/material.dart';

class DatePickerTest extends StatefulWidget {
  const DatePickerTest({super.key});

  @override
  State<DatePickerTest> createState() => _DatePickerTestState();
}

class _DatePickerTestState extends State<DatePickerTest> {
  DateTime? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            child: Text("Selected Date"),
            onPressed: (){
              Future<DateTime?>selectedDate = showDatePicker(
                  context: context,//건드리지 않음
                  initialDate: DateTime.now(), //초기값. 여기선 현재 시간으로 줌
                  firstDate: DateTime(2018),
                  lastDate: DateTime(2030),
                  builder: (BuildContext context, Widget? child){
                    return Theme(
                      data: ThemeData.dark(),
                      child: child!,
                    );
                  }, //widget? 이랑 child! 는 대체 왜 하는거지..
              );//<DateTime?> 으로 nullable 만들어줘야하는 부분이 책과 다름.
              selectedDate.then((dateTime){
                setState(() {
                  _selectedTime = dateTime;
                });
                },
              );
            },
          ),
          Text("$_selectedTime"),
        ],
      ),
    );
  }
}
