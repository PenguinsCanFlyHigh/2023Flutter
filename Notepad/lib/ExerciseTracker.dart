import 'package:flutter/material.dart';


class ExerciseTracker extends StatefulWidget {
  const ExerciseTracker({super.key});

  @override
  State<ExerciseTracker> createState() => _ExerciseTrackerState();
}


class _ExerciseTrackerState extends State<ExerciseTracker> {
  // 텍스트 입력 하는 필드들
  TextEditingController _bodyPartController = TextEditingController();
  TextEditingController _exerciseTypeController = TextEditingController();
  TextEditingController _timeController = TextEditingController();

  // 운동 기록을 저장할 리스트
  List<Exerciselist> _exerciselists = [];

  //본체가 될 위젯
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('운동 기록 앱',
          style: TextStyle(
              color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // 기록된 운동 목록을 표시하는 리스트뷰
          Expanded(
            child: ListView.builder(
              itemCount: _exerciselists.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    '${_exerciselists[index].bodyPart} - ${_exerciselists[index].exerciseType} - ${_exerciselists[index].time} 분',
                  ),
                );
              },
            ),
          ),
          // 운동 기록을 추가하는 부분
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // 운동 부위 입력 필드
                TextFormField(
                  controller: _bodyPartController,
                  decoration: InputDecoration(
                    hintText: '운동 부위',
                  ),
                ),
                SizedBox(height: 8.0),
                // 운동 종류 입력 필드
                TextFormField(
                  controller: _exerciseTypeController,
                  decoration: InputDecoration(
                    hintText: '운동 종류',
                  ),
                ),
                SizedBox(height: 8.0),
                // 운동 시간 입력 필드
                TextFormField(
                  controller: _timeController,
                  keyboardType: TextInputType.number, //시간이라 넘버타입
                  decoration: InputDecoration(
                    hintText: '운동 시간 (분)',
                  ),
                ),
                SizedBox(height: 16.0),
                // 운동 기록을 추가하는 버튼
                ElevatedButton(
                  onPressed: () {
                    _addlist();
                  },
                  child: Text('운동 추가'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 운동 기록을 리스트에 추가하는 메서드
  void _addlist() {
    setState(() {
      // 입력된 운동 부위
      String bodyPart = _bodyPartController.text;
      // 입력된 운동 종류
      String exerciseType = _exerciseTypeController.text;
      // 입력된 운동 시간
      String time = _timeController.text;

      // 입력된 값이 비어 있지 않은 경우에만 추가
      if (bodyPart.isNotEmpty && exerciseType.isNotEmpty && time.isNotEmpty) {
        // Exerciselist 모델 클래스를 이용하여 새로운 기록을 생성
        _exerciselists.add(Exerciselist(
          bodyPart: bodyPart,
          exerciseType: exerciseType,
          time: time,
        ));

        // 입력 필드 초기화
        _bodyPartController.clear();
        _exerciseTypeController.clear();
        _timeController.clear();
      }
    });
  }
}

// 운동 기록의 베이스 모델이 될 클래스
class Exerciselist {
  // 운동 부위
  final String bodyPart;
  // 운동 종류
  final String exerciseType;
  // 운동 시간
  final String time;

  Exerciselist({
    required this.bodyPart,
    required this.exerciseType,
    required this.time,
  });
}
