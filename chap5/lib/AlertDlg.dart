import 'package:flutter/material.dart';

class AlertDlg extends StatefulWidget {
  const AlertDlg({super.key});

  @override
  State<AlertDlg> createState() => _AlertDlgState();
}

class _AlertDlgState extends State<AlertDlg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ElevatedButton(
        child: Text("Show Dialog"),
        onPressed: (){
          showDialog(
              context: context,//건드릴 필요 없음
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("HI"),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text("Alert Dialog 입니다"),
                        Text("이거 다 외워야한다"),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();//네비게이터는 어러개의 씬을 만들고 왔다갔다 하게 해줌?
                        },
                        child: Text("OK"),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"),
                    ),
                  ],
                );
              },
          );//빌더는 우리가 할 거를 만들어주는 부분
        },
      ),
    );
  }
}
