import 'package:flutter/material.dart';
import 'dart:async';

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({super.key});

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  late Timer _timer;

  var _time = 0;
  var _isRunning = false;

  List<String> _lapTimes = [];

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("스톱워치",
          style: TextStyle(
              color: Colors.white,),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: _buildBody(), //여기에 다 써넣으면 Scaffold가 너무 복잡해지니까 함수로 밖에서 따로 정의
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: SizedBox(
        width: 75.0,
        height: 75.0,
        child: FloatingActionButton(
          onPressed: () => setState(() {
            _clickButton();
          }),
          shape: CircleBorder(),
          child: _isRunning ? Icon(Icons.pause):Icon(Icons.play_arrow),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    var sec = _time~/100;
    var hundredth = '${_time % 100}'.padLeft(2, '0');

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top:30),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$sec',
                      style: TextStyle(fontSize: 55.0),
                    ),
                    Text('$hundredth',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Container(
                  width: 70,
                  height: 200,
                  child: ListView(
                    children: _lapTimes.map((time) => Text(time)).toList(),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: SizedBox(
                width: 75.0,
                height: 75.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: _reset,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Icon(Icons.rotate_left),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: SizedBox(
                width: 75.0,
                height: 75.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      _recordLapTime('$sec.$hundredth');
                    });
                  },
                  child: Text('랩타입',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _clickButton() {
    _isRunning = !_isRunning;

    if(_isRunning){
      _start();
    } else {
      _pause();
    }
  }

  void _start() {
    _timer = Timer.periodic(Duration(milliseconds:10), (timer) {
      setState(() {
        _time++;
      });
    });
  }

  void _pause() {
    _timer?.cancel();
  }

  void _reset() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _lapTimes.clear();
      _time = 0;
    });
  }

  void _recordLapTime(String time) {
    _lapTimes.insert(0, '${_lapTimes.length + 1}등 $time');
  }
}
